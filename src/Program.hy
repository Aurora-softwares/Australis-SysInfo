public class Program {
    public static int Main(string[] args) {
        int api = System.Australis.SystemInfo.Query(0);
        if (api < 2) {
            System.Console.WriteLine("sys-info: system information API 2 is required");
            return 2;
        }
        System.Console.WriteLine("Australis System Information");
        System.Console.WriteLine("System information API:");
        System.Console.WriteLine(api);
        System.Console.WriteLine("Boot information ABI:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(16));
        System.Console.WriteLine("Boot mode (0 normal, 1 debug, 3 rescue):");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(17));
        System.Console.WriteLine("Kernel initialization flags:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(18));
        System.Console.WriteLine("PCI functions discovered:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(19));
        System.Console.WriteLine("APIC mode (0 xAPIC, 1 x2APIC):");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(20));
        System.Console.WriteLine("Block controller (1 AHCI, 2 NVMe):");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(21));
        System.Console.WriteLine("Root filesystem flags:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(22));
        System.Console.WriteLine("Framebuffer width:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(23));
        System.Console.WriteLine("Framebuffer height:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(24));
        System.Console.WriteLine("Clock calibration (1 ready, 2 failed):");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(25));
        return 0;
    }
}
