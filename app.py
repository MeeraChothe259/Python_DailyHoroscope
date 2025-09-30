from bottle import *
import requests

application = Bottle()
@application.route("/", method=["GET","POST"])
def home():
    if request.method == "POST":
        sign = request.forms.get("sign")
        sign = sign.upper()
        try:
            url = "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign="+sign+"&day=TODAY"
            res = requests.get(url)
            print(res)
            data = res.json()
            horoscope = data["data"]["horoscope_data"]
            
            return template("home", msg = horoscope)
        except Exception as e:
            msg = "Enter valid sign"
            return template("home", msg = msg)
    else:
        return template("home",msg="")


run(application, debug = True, reloader=True, port = 9000)
