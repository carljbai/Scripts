# Load the Winforms assembly
[reflection.assembly]::LoadWithPartialName( "System.Windows.Forms")

# Create the form
$form = New-Object Windows.Forms.Form

#Set the dialog title
$form.text = "PowerShell WinForms Example"

# Create the label control and set text, size and location
$label = New-Object Windows.Forms.Label
$label.Location = New-Object Drawing.Point 50,30
$label.Size = New-Object Drawing.Point 200,15
$label.text = "Enter your name and click the button"

# Create TextBox and set text, size and location
$textfield = New-Object Windows.Forms.TextBox
$textfield.Location = New-Object Drawing.Point 50,60
$textfield.Size = New-Object Drawing.Point 200,30

# Create Button and set text and location
$button = New-Object Windows.Forms.Button
$button.text = "Greeting"
$button.Location = New-Object Drawing.Point 100,90

# Set up event handler to extarct text from TextBox and display it on the Label.
$button.add_click({

$label.Text = "Hello " + $textfield.text

})

#test

$button2 = New-Object Windows.Forms.Button
$button2.text = "exit"
#                                            x  , y
$button2.Location = New-Object Drawing.Point 100,130

$button2.add_click({ $form.close() })




# Add the controls to the Form
$form.controls.add($button)
$form.controls.add($button2)
$form.controls.add($label)
$form.controls.add($textfield)

# Display the dialog
$form.ShowDialog()