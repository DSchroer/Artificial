//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;               // (r,g,b,a)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 sprite_size;

const float alpha_threshold = 0.2;

float outline_pass(float alpha, vec2 offsetx, vec2 offsety)
{
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsetx ).a);
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetx ).a);
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsety ).a);
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsety ).a);
    
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsetx + offsety ).a);
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsetx - offsety ).a);
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetx + offsety ).a);
    alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetx - offsety ).a);
    
    return alpha;
}

void main()
{
    vec2 offsetx;
    vec2 offsety;
    offsetx.x = sprite_size.x;
    offsety.y = sprite_size.y;
    
    float alpha = 0.;
    alpha = outline_pass(alpha, offsetx, offsety);
    
    /*
    offsetx.x += sprite_size.x;
    offsety.y += sprite_size.y;
    alpha = outline_pass(alpha, offsetx, offsety);*/
    
    if( texture2D( gm_BaseTexture, v_vTexcoord ).a <= alpha_threshold && alpha != 0.)
    {
        gl_FragColor = vec4(1,1,1,1);
    }else{
        gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    }
}
