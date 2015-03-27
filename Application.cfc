component
	output="false"
{
	THIS.javaSettings = {
		LoadPaths: directoryList(expandPath("./"), true, "path", "classes");
	};
}