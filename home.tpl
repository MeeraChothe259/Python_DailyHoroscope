<html>
<head>
    <title>Daily Horoscope</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
        }

        h1 {
            margin-top: 50px;
            font-size: 3em;
            color: #ffd369;
            text-shadow: 0px 0px 20px rgba(255, 211, 105, 0.8);
            letter-spacing: 2px;
        }

        .form-card {
            margin-top: 40px;
            background: rgba(255, 255, 255, 0.05);
            padding: 40px 50px;
            border-radius: 18px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 8px 25px rgba(0, 0, 0, 0.5);
            text-align: center;
            width: 420px;
        }

        input[type="text"] {
            width: 100%;
            padding: 14px;
            border: 2px solid transparent;
            outline: none;
            border-radius: 10px;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            text-align: center;
            transition: 0.3s ease-in-out;
        }

        input[type="text"]:focus {
            border-color: #ffd369;
            box-shadow: 0 0 10px #ffd369;
            background: rgba(255, 255, 255, 0.15);
        }

        input[type="submit"] {
            width: 100%;
            margin-top: 20px;
            padding: 14px 20px;
            font-size: 17px;
            font-weight: 600;
            background: linear-gradient(45deg, #ff512f, #dd2476);
            border: none;
            border-radius: 10px;
            color: #fff;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        input[type="submit"]:hover {
            transform: scale(1.05);
            box-shadow: 0px 6px 18px rgba(221, 36, 118, 0.6);
        }

        h2 {
            margin-top: 35px;
            max-width: 600px;
            font-size: 1.4em;
            color: #90e0ef;
            background: rgba(255, 255, 255, 0.05);
            padding: 20px;
            border-radius: 12px;
            backdrop-filter: blur(8px);
            text-align: center;
            box-shadow: 0px 6px 15px rgba(0,0,0,0.4);
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <h1>✨ Daily Horoscope ✨</h1>

    <div class="form-card">
        <form method="post">
            <input type="text" name="sign" placeholder="Enter your zodiac sign..." required/>
            <br/><br/>
            <input type="submit" value="🔮 See My Horoscope"/>
        </form> 
    </div>

    %if msg:
    <h2>{{msg}}</h2>
    %end
</body>
</html>
