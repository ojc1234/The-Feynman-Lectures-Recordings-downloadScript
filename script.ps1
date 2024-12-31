$arr = "FLP_1_01.mp4", "FLP_1_01R.mp4", "FLP_2_01.mp4", "FLP_3_01.mp4", "FLP_4_01.mp4", "FLP_5_01.mp4", "FLP_6_01.mp4", "FLP_7_01.mp4", "FLP_8_01.mp4", "FLP_9_01.mp4", "FLP_10_01.mp4", "FLP_11_01.mp4", "FLP_12_01.mp4", "FLP_13_01.mp4", "FLP_14_01.mp4", "FLP_15_01.mp4", "FLP_16_01.mp4", "FLP_17_01.mp4", "FLP_RevA_01.mp4", "FLP_RevB_01.mp4", "FLP_RevC_01.mp4", "FLP_18_01.mp4", "FLP_19_01.mp4", "FLP_20_01.mp4", "FLP_21_01.mp4", "FLP_22_01.mp4", "FLP_23_01.mp4", "FLP_24_01.mp4", "FLP_25_01.mp4", "FLP_26_01.mp4", "FLP_27_01.mp4", "FLP_28_01.mp4", "FLP_29_01.mp4", "FLP_30_01.mp4", "FLP_31_01.mp4", "FLP_32_01.mp4", "FLP_33_01.mp4", "FLP_34_01.mp4", "FLP_34A_01.mp4", "FLP_35_01.mp4", "FLP_36_01.mp4", "FLP_37_01.mp4", "FLP_38_01.mp4", "FLP_39_01.mp4", "FLP_40_01.mp4", "FLP_41_01.mp4", "FLP_41A_01.mp4", "FLP_42_01.mp4", "FLP_43_01.mp4", "FLP_44_01.mp4", "FLP_45_01.mp4", "FLP_46_01.mp4", "FLP_47_01.mp4", "FLP_48_01.mp4", "FLP_49_01.mp4", "FLP_50_01.mp4", "FLP_51_01.mp4", "FLP_52_01.mp4", "FLP_S1_01.mp4", "FLP_S2_01.mp4", "FLP_S3_01.mp4", "FLP_S4_01.mp4", "FLP_S5_01.mp4", "FLP_S6_01.mp4", "FLP_S7_01.mp4", "FLP_S8_01.mp4", "FLP_S9_01.mp4", "FLP_S10_01.mp4", "FLP_S11_01.mp4", "FLP_S12_01.mp4", "FLP_S13_01.mp4", "FLP_S14_01.mp4", "FLP_S15_01.mp4", "FLP_S16_01.mp4", "FLP_S17_01.mp4", "FLP_S18_01.mp4", "FLP_S19_01.mp4", "FLP_S20_01.mp4", "FLP_S21_01.mp4", "FLP_S22_01.mp4", "FLP_S23_01.mp4", "FLP_S24_01.mp4", "FLP_S25_01.mp4", "FLP_S26_01.mp4", "FLP_S27_01.mp4", "FLP_S28_01.mp4", "FLP_S29_01.mp4", "FLP_S30_01.mp4", "FLP_S31_01.mp4", "FLP_S32_01.mp4", "FLP_S33_01.mp4", "FLP_S34_01.mp4", "FLP_S35_01.mp4", "FLP_S36_01.mp4", "FLP_S37_01.mp4", "FLP_S38_01.mp4", "FLP_S39_01.mp4", "FLP_S40_01.mp4", "FLP_S41_01.mp4", "FLP_S42_01.mp4", "FLP_S43_01.mp4", "FLP_S44_01.mp4", "FLP_S45_01.mp4", "FLP_S46_01.mp4", "FLP_S47_01.mp4", "FLP_S48_01.mp4", "FLP_S49_01.mp4", "FLP_S50_01.mp4", "FLP_S51_01.mp4", "FLP_S52_01.mp4", "FLP_S53_01.mp4", "FLP_S53A_01.mp4", "FLP_S54_01.mp4", "FLP_S56_01.mp4", "FLP_S57_01.mp4", "FLP_S58_01.mp4", "FLP_S59_01.mp4", "FLP_S60_01.mp4", "FLP_S61_01.mp4", "FLP_S62_01.mp4", "FLP_S63_01.mp4", "FLP_S64_01.mp4"
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Whale/4.29.282.14 Safari/537.36"
$session.Cookies.Add((New-Object System.Net.Cookie("_gid", "GA1.2.1265248711.1735666722", "/", ".caltech.edu")))
$session.Cookies.Add((New-Object System.Net.Cookie("_ga", "GA1.1.1557434277.1735666722", "/", ".caltech.edu")))
$session.Cookies.Add((New-Object System.Net.Cookie("_ga_GZ7WM3DRRS", "GS1.1.1735666722.1.0.1735666738.0.0.0", "/", ".caltech.edu")))
$session.Cookies.Add((New-Object System.Net.Cookie("_ga_7B1M78W1QZ", "GS1.1.1735666722.1.0.1735666738.0.0.0", "/", ".caltech.edu")))

$i=0
for(;$i -le 122;$i++)
{
  $k = $arr[$i]
    Invoke-WebRequest -UseBasicParsing -Uri "https://www.feynmanlectures.caltech.edu/protectedaudio/mp4/$k" `
-WebSession $session `
-Headers @{
"Accept"="*/*"
  "Accept-Encoding"="identity;q=1, *;q=0"
  "Accept-Language"="ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7"
  "Cache-Control"="no-cache"
  "Pragma"="no-cache"
  "Referer"="https://www.feynmanlectures.caltech.edu/flptapes.html"
  "Sec-Fetch-Dest"="audio"
  "Sec-Fetch-Mode"="no-cors"
  "Sec-Fetch-Site"="same-origin"
  "sec-ch-ua"="`"Chromium`";v=`"130`", `"Whale`";v=`"4`", `"Not.A/Brand`";v=`"99`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
} -OutFile "./$k"
}
