component{
	this.name = 'Test Env';

	this.mappings['/mxunit'] = getDirectoryFromPath(getCurrentTemplatePath()) & "../../mxunit";
	this.mappings['/tests'] = getDirectoryFromPath(getCurrentTemplatePath());
	this.mappings['/testbox'] = getDirectoryFromPath(getCurrentTemplatePath()) & "../../testbox/system/testing";
}