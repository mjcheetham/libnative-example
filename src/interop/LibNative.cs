using System.Runtime.InteropServices;

namespace LibNative.Interop
{
	public static class NativeMethods
	{
		private const string LibraryName = "native";

#if NETFRAMEWORK
		[DllImport("kernel32", EntryPoint = "LoadLibrary")]
		private static extern System.IntPtr LoadWindowsLibrary(string path);

		static NativeMethods()
		{
			string asmPath = System.Reflection.Assembly.GetExecutingAssembly().Location;
			string execDir = System.IO.Path.GetDirectoryName(asmPath);

			// We don't support .NET Framework natively on ARM64
			string arch = System.Environment.Is64BitProcess
						? "x64"
						: "x86";

			string path = System.IO.Path.Combine(execDir, "lib", "win32", arch, "native.dll");

			LoadWindowsLibrary(path);
		}
#endif

		[DllImport(LibraryName)]
		public static extern int libnative_init();
	}
}
