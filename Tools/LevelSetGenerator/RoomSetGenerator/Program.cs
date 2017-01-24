using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Windows.Forms;
using System.Xml;

namespace RoomSetGenerator
{
    class Program
    {
        static readonly int ROOM_SIZE = 64;
        static readonly string LINE_FORMAT = "generator_add_option({0}, {1}, {2});";

        [STAThread]
        static void Main(string[] args)
        {
            var files = GetFiles();

            foreach(var file in files)
            {
                try
                {
                    Console.WriteLine(GenerateRoomScript(file));
                }
                catch(Exception e)
                {
                    Console.WriteLine($"//{file}");
                    Console.WriteLine($"//{e.Message}");
                }
            }

            Console.ReadKey();
        }

        static string GenerateRoomScript(string file)
        {
            var info = new FileInfo(file);
            var name = info.Name.Replace(".room.gmx","");

            var width = -1;
            var height = -1;
            using (var reader = XmlReader.Create(file))
            {
                reader.ReadToFollowing("room");

                reader.ReadToDescendant("width");
                reader.Read();
                width = reader.ReadContentAsInt();
                
                reader.ReadToFollowing("height");
                reader.Read();
                height = reader.ReadContentAsInt(); 
            }

            if(width % ROOM_SIZE != 0 || height % ROOM_SIZE != 0)
            {
                throw new Exception($"Room is not a multiple of {ROOM_SIZE}.");
            }

            width /= ROOM_SIZE;
            height /= ROOM_SIZE;

            if (width % 2 == 0 || height % 2 == 0)
            {
                throw new Exception($"Room is not a odd size.");
            }

            return string.Format(LINE_FORMAT, name, width, height);
        }

        static string[] GetFiles()
        {
            var d = new OpenFileDialog();
            d.Multiselect = true;

            if(d.ShowDialog() == DialogResult.OK)
            {
                return d.FileNames;
            }else
            {
                return new string[0];
            }
        }
    }
}
