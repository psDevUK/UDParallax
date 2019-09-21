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
