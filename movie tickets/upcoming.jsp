<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upcoming Movies</title>
<style>
      body {
        background-color: #1e1f26;
        font-family: sans-serif;
      }
      h1 {
        color: #ffcc00;
        text-align: center;
        font-family: "Courier New", Courier, monospace;
        font-size: 3rem;
        text-shadow: 2px 2px 5px #000;
        margin-bottom: 30px;
      }
      .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 20px;
      }
      .card {
        background-color: #333;
        padding: 10px;
        border-radius: 10px;
        text-align: center;
        max-width: 300px;
        margin-bottom: 20px;
      }
      .card img {
        max-width: 80%;
        height: auto;
        border-radius: 20px;
        cursor: pointer;
      }
      .card button {
        margin-top: 10px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 20px;
        cursor: pointer;
        font-size: 16px;
      }
      .card button:hover {
        background-color: #0056b3;
      }
    </style>
  </head>

  <body>
    <h1>Upcoming Telugu Movies</h1>
    <div class="container">
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/court-state-vs-a-nobody-et00432575-1738825828.jpg"
          alt="Image 1"
          onclick="openTrailer('https://youtu.be/6zeHotUuOJo')"
        />
        <button onclick="openTrailer('https://youtu.be/6zeHotUuOJo')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MjUsIEFwciAyMDI1,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00377025-rmnqckcyvj-portrait.jpg"
          alt="Image 2"
          onclick="openTrailer('https://youtu.be/KCx1bBTM9XE')"
        />
        <button onclick="openTrailer('https://youtu.be/KCx1bBTM9XE')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MSwgTWF5IDIwMjU%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00395817-msmhkjxegj-portrait.jpg"
          alt="Image 3"
          onclick="openTrailer('https://youtu.be/vHk8tqbeq5o')"
        />
        <button onclick="openTrailer('https://youtu.be/vHk8tqbeq5o')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Vishwambhara_poster.jpg/220px-Vishwambhara_poster.jpg"
          alt="Image 4"
          onclick="openTrailer('https://youtu.be/7Lq-pOz8beM')"
        />
        <button onclick="openTrailer('https://youtu.be/7Lq-pOz8beM')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MTgsIEFwciAyMDI1,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00419204-tqpkljlswl-portrait.jpg"
          alt="Image 5"
          onclick="openTrailer('https://youtu.be/W5FkYULk3Ls')"
        />
        <button onclick="openTrailer('https://youtu.be/W5FkYULk3Ls')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MywgQXByIDIwMjU%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00429289-lelpvnleyb-portrait.jpg"
          alt="Image 6"
          onclick="openTrailer('https://youtu.be/MFKdqXk6XIQ')"
        />
        <button onclick="openTrailer('https://youtu.be/MFKdqXk6XIQ')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MTQsIEZlYiAyMDI1,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00430098-eqpvkqbcub-portrait.jpg"
          alt="Image 7"
          onclick="openTrailer('https://youtu.be/aqb8wLjajQY')"
        />
        <button onclick="openTrailer('https://youtu.be/aqb8wLjajQY')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MjAyNQ%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00118162-nfuvprudum-portrait.jpg"
          alt="Image 8"
          onclick="openTrailer('https://youtu.be/HwYmZYiTWrI')"
        />
        <button onclick="openTrailer('https://youtu.be/HwYmZYiTWrI')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MjAyNQ%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00390532-fvagcuykua-portrait.jpg"
          alt="Image 9"
          onclick="openTrailer('https://youtu.be/QJtZkGWq-9A')"
        />
        <button onclick="openTrailer('https://youtu.be/QJtZkGWq-9A')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://img.indiaforums.com/movie/350x525/7/275-war-2.jpg?c=5lN8A6"
          alt="Image 10"
          onclick="openTrailer('https://youtu.be/h1O3hDWma6M')"
        />
        <button onclick="openTrailer('https://youtu.be/h1O3hDWma6M')">
          Play Trailer
        </button>
      </div>
      <div class="card">
        <img
          src="https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-MjAyNQ%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00423419-bzbaveshje-portrait.jpg"
          alt="Image 11"
          onclick="openTrailer('https://youtu.be/7Nk6ymBU8oQ')"
        />
        <button onclick="openTrailer('https://youtu.be/7Nk6ymBU8oQ')">
          Play Trailer
        </button>
      </div>
    </div>
    <script>
      function openTrailer(url) {
        window.open(url, "_blank");
      }
    </script>
  </body>
</html>