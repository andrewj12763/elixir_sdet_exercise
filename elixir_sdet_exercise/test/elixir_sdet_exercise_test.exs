defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

  test "Sign-up No input" do
  navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
    # Set elements to Variables
    signUpBTN = find_element(:id, "u_0_14")
    # Sign up without inputting info
    click(signUpBTN)
    take_screenshot("noInput.png")
   
  end
  test "Sign-up No Password" do
  navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
    # Set elements to Variables
    signUpBTN = find_element(:id, "u_0_14")
    fName = find_element(:id, "u_0_n")
    lName = find_element(:id, "u_0_p")
    email = find_element(:id, "u_0_s")
    rEmail = find_element(:id, "u_0_v")
    gender = find_element(:id, "u_0_6")
     # Sign up with no password
    fill_field(fName, "John")
    fill_field(lName, "Smith")
    fill_field(email, "johnsmith@gmail.com")
    fill_field(rEmail, "johnsmith@gmail.com")
    click(gender)
    click(signUpBTN)
    take_screenshot("No Password.png")
   
  end
  test "Sign-up Invalid Email" do
  navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
    # Set elements to Variables
   signUpBTN = find_element(:id, "u_0_14")
    fName = find_element(:id, "u_0_n")
    lName = find_element(:id, "u_0_p")
    email = find_element(:id, "u_0_s")
    password = find_element(:id, "u_0_x")
    gender = find_element(:id, "u_0_6")

    # Sign up with invalid email
    fill_field(fName, "John")
    fill_field(lName, "Smith")
    fill_field(email, "johnsmith.com")
    fill_field(password, "Welcome1!")
    click(gender)
    click(signUpBTN)
    take_screenshot("invalid email.png")
   
  end
  test "Sign-up Invalid Phone" do
  navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
   # Set elements to Variables
    signUpBTN = find_element(:id, "u_0_14")
    fName = find_element(:id, "u_0_n")
    lName = find_element(:id, "u_0_p")
    email = find_element(:id, "u_0_s")
    password = find_element(:id, "u_0_x")
    gender = find_element(:id, "u_0_6")

     # Sign up with invalid phone
     fill_field(fName, "John")
     fill_field(lName, "Smith")
     fill_field(email, "801801801")
     click(gender)
     click(signUpBTN)
     take_screenshot("invalid Phone number.png")
   
  end
end