defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

  test "goes to google" do
    navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
    # Set elements to variables fro re-use
    signUpBTN = find_element(:id, "u_0_14")
    fName = find_element(:id, "u_0_n")
    lName = find_element(:id, "u_0_p")
    email = find_element(:id, "u_0_s")
    password = find_element(:id, "u_0_x")
    gender = find_element(:id, "u_0_6")

    # Sign up without inputting info
    click(signUpBTN)
    take_screenshot("noInput.png")
     # Sign up with no password
    fill_field(fName, "John")
    fill_field(lName, "Smith")
    fill_field(email, "johnsmith.com")
    click(gender)
    click(signUpBTN)
    take_screenshot("No Password.png")
    # Sign up with invalid email
    fill_field(fName, "John")
    fill_field(lName, "Smith")
    fill_field(email, "johnsmith.com")
    fill_field(password, "Welcome1!")
    click(gender)
    click(signUpBTN)
    take_screenshot("invalid email.png")
     # Sign up with invalid phone
     fill_field(email, "801801801")
     take_screenshot("invalid Phone number.png")
   
  end
end