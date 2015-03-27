component extends="testbox.system.BaseSpec"{
    // executes before all suites
    function beforeAll() {
        variables.BCrypt = new BCryptCFC.BCrypt();
    }

    // executes after all suites
    function afterAll() {}

    // All suites go in here
    function run( testResults, testBox ){
    	var salt = password = hash = "";
        describe("BCrypt Component", function() {
            describe("genSalt()", function() {
                it("should return a string and have a length of 30", function() {
                	salt = variables.BCrypt.genSalt();
                    expect(salt).toBeString().toHaveLength(29);
                });
            });
            describe("hashString()", function() {
                it("should return a string and have a length of 60 when a value is supplied", function() {
                	password = "moo";
                	salt = variables.BCrypt.genSalt();
                    expect(variables.BCrypt.hashString(password, salt)).toBeString().toHaveLength(60);
                });
            });
            describe("checkString()", function() {
                it("should return true if string matches hash", function() {
                	password = "moo";
                	salt = variables.BCrypt.genSalt();
                	hash = variables.BCrypt.hashString(password, salt);
                    expect(variables.BCrypt.checkString(password, hash)).toBeTrue();
                });
                it("should return false if string does not match hash", function() {
                	password = "moo";
                	salt = variables.BCrypt.genSalt();
                	hash = variables.BCrypt.hashString(password, salt);
                    expect(variables.BCrypt.checkString("cow", hash)).toBeFalse();
                });
            });
        });
    }
}