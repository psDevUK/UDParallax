# UDParallax
Adding parallax images to universal dashboard "bring the bling"
There is a demo.ps1 file located in this repository which contains the following:-

Import-Module -Name UniversalDashboard.Community
Import-Module "C:\UD\para\UDParallax\src\output\UniversalDashboard.UDParallax\UniversalDashboard.UDParallax.psd1" -Force
Get-UDDashboard | Stop-UDDashboard
Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        New-UDParallax -Image "https://img00.deviantart.net/2bd0/i/2009/276/c/9/magic_forrest_wallpaper_by_goergen.jpg" -Text "Wow reverse scrolling with blur" -Height 400 -Strength '-600' -FontSize 30 -BlurMin -1 -BlurMax 6 -TextColor "White"
        New-UDRow
        New-UDParallax -Image "https://png.pngtree.com/element_our/sm/20180508/sm_5af12c22d7dcc.png" -Strength 800
        New-UDRow
        New-UDParallax -Image "https://images.unsplash.com/photo-1498092651296-641e88c3b057?auto=format&fit=crop&w=1778&q=60&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" -Height 500 -Strength -800 -Padding 20 -Background "black" -Text "Change how the font looks" -FontSize 43 -TextColor "orange"
    }
)

So a breakdown of all the parameter components:-
-Image This needs to be enclosed in speech-marks as shown in the demo above, and point to a valid image file

-Text Use this parameter to display text centered on-top of the image, leave this out if you don't want text. Defaulted to ''

-Strength Parallax effect strength (in pixel), default 100. this will define the amount of pixels the background image is translated - (type: Number)

-Height Is a numeric value of the height of the image defaulted at 500

-FontSize This is a numeric value for the font size if you used the -Text parameter default value is 20 for this parameter

blur
    pixel value for background image blur, default: 0 - (type: Number)
    or object in format {min:0, max:5} for dynamic blur depending on scroll position
 So the -BlurMin refers to the min: value above and is defaulted to 0 and the -BlurMax refers to the max: value above and is also defaulted to 0.

-Background Sets the background to display behind the text if you used the -Text parameter this is defaulted to transparent

-Padding This parameter is linked to the background parameter, and will give additional padding to the background behind the text displayed. It has been defaulted to 0 about 20 is a good number to use if you have used the -Text parameter use this parameter for better styling

-TextColor Allows you to choose the colour of the text being displayed ontop of the image, this is defaulted to black and is used in conjunction with the -Text and -FontSize parameter


