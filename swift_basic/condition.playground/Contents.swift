let dust = 70

if dust <= 30 {
    print("상쾌하다")
}
else if dust > 50 && dust <= 100 {
    print("아 안좋아~")
}

var weather: String = "맑음"
switch weather {
case "맑음":
    print("맑은 날씨다")
    print("나가 놀자")
default:
    print("맑지 않은 날씨다")
}
