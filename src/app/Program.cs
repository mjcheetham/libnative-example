using System;
using static LibNative.Interop.NativeMethods;

namespace app
{
	public static class Program
	{
		public static void Main(string[] args)
		{
			int result = libnative_init();
			Console.WriteLine("libnative_init() returned 0x{0:x}", result);
		}
	}
}
