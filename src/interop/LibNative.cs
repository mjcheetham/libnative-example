using System.Runtime.InteropServices;

namespace LibNative.Interop
{
	public static class NativeMethods
	{
		private const string LibraryName = "native";

		[DllImport(LibraryName)]
		public static extern int libnative_init();
	}
}
