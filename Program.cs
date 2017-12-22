using System;
using System.Diagnostics;

namespace SigChldRepro
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var Proc = Process.Start("/bin/false"))
            {
                Proc.WaitForExit();
                Console.WriteLine($"/bin/false returned {(Proc.ExitCode == 1 ? "CORRECT" : "WRONG")} exit code: {Proc.ExitCode}");
            }
        }
    }
}
