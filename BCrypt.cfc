component name="BCrypt"
	output="false"
{
	public function init() {
		VARIABLES.bcrypt = createObject("java", "BCrypt");

		return THIS;
	}

	public string function genSalt(numeric strength = 12)
		output="false"
	{
		return VARIABLES.bcrypt.gensalt(ARGUMENTS.strength);
	}

	public string function hashString(required string string, string salt = genSalt())
		output="false"
	{
		return VARIABLES.bcrypt.hashpw(ARGUMENTS.string, ARGUMENTS.salt);
	}

	public boolean function checkString(required string string, required string hash)
		output="false"
	{
		return VARIABLES.bcrypt.checkpw(ARGUMENTS.string, ARGUMENTS.hash);
	}
}