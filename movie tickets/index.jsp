<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie tickets</title>
<style>
      @import url("https://fonts.googleapis.com/css2?family=Joan&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Joan", serif;
}
a {
  text-decoration: none;
  color: #adadad;
}
.btn {
  display: inline-block;
  padding: 0.5rem 1rem;
  background-color: #cd8c38;
  border-radius: 2rem;
  color: #1e1f26;
  transition: 0.3s;
}
.btn:hover {
  background-color: #92601f;
}
.btn-l {
  width: 100%;
  text-align: center;
}
body {
  background-color: #1e1f26;
  display: grid;
  grid-template-columns: 1000px;
  justify-content: space-evenly;
}
.top-bar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1.5rem 1rem;
}
.left-content,
.right-content {
  display: flex;
  align-items: center;
}
.title {
  margin-right: 3rem;
  color: #cd8c38;
}
.navigation {
  display: flex;
  list-style: none;
}
.navigation li {
  margin-right: 1rem;
}
.navigation li a:hover {
  color: #cd8c38;
}

.filter,
.cart,
.help,
.menu {
  position: relative;
  width: 20px;
  height: 20px;
}
.filter,
.cart,
.help {
  margin-right: 1rem;
}
.menu {
  margin-left: 0.8rem;
}
.filter,
.menu {
  display: none;
}
.profile-img-box {
  position: relative;
  height: 30px;
  width: 30px;
  cursor:pointer;
  border-radius: 50%;
  overflow: hidden;
}
img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.upcoming-img-box {
  position: relative;
  height: 300px;
  width: 100%;
  border-radius: 1rem;
  overflow: hidden;
  margin-bottom: 1.5rem;
}
.upcoming-title {
  position: absolute;
  top: 2rem;
  left: 2rem;
  color: #cd8c38;
  background-color: #1e1f26;
  padding: 0.5rem 1rem;
  border-radius: 2rem;
  border: 1px solid #cd8c38;
  font-weight: 500;
}
.buttons {
  position: absolute;
  bottom: 2rem;
  left: 2rem;
}
.btn-alt {
  background-color: #1e1f26;
  color: #cd8c38;
  border: 1px solid #cd8c38;
  margin-left: 1rem;
}
.btn-alt:hover {
  color: #1e1f26;
  background-color: #cd8c38;
}
.movies-container {
  padding-bottom: 2rem;
}
.current-movies {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.5rem;
}
.current-movie {
  background: linear-gradient(
    45deg,
    rgba(255, 255, 255, 0.05),
    rgba(205, 140, 56, 0.15)
  );
  padding: 1rem;
  border-radius: 0.5rem;
}
.cm-img-box {
  position: relative;
  height: 150px;
  width: auto;
  margin-bottom: 1rem;
  border-radius: 0.5rem;
  overflow: hidden;
}
.movie-title {
  color: #fff;
  margin-bottom: 0.2rem;
}
.booking {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 1rem;
}
.price {
  color: #cd8c38;
}
.screen-name {
  color: bisque;
}
.dropdown .btn{
cursor:pointer;
}

</style>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setHeader("Expires", "0"); // Prevents caching
if(session.getAttribute("username")!=null)
{
	response.sendRedirect("home.jsp");	
}
%>
<section class="top-bar">
      <div class="left-content">
        <h2 class="title">Book Chey Machaa</h2>
        <ul class="navigation">
         
         
           <li><a class="btn" href="upcoming.jsp" >More Upcoming Movies</a></li>
           <li><a class="btn" href="about.jsp">About us</a></li>
        </ul>
      </div>
      <div class="dropdown"><a href="login.jsp">
      <button class="btn">Sign out</button></a>
   </div>
    </section>
        </form>
      </div>
      <div class="movies-container">
        <div class="upcoming-img-box">
          <img
            src="https://m.media-amazon.com/images/M/MV5BMmQzNDM4ZTAtYmRhYi00YTM5LTkwZWYtZTA1YWUzMWRlOGI5XkEyXkFqcGc@._V1_.jpg"
            alt=""/>
          
          <div class="buttons">
            <a href="hariharaveramallu.jsp" class="btn"
              >Book Now</a
            >
            <a
              href="https://youtu.be/4TriF7BfHyI"
              target="_blank"
              class="btn-alt btn"
              >Play Trailer</a
            >
          </div>
        </div>
        <div class="current-movies">
          <div class="current-movie">
            <div class="cm-img-box">
              <img
                src="https://th-i.thgim.com/public/entertainment/movies/xdfbca/article67742797.ece/alternates/FREE_1200/rajasaab.jpg"
                alt=""/>
            </div>
            <h3 class="movie-title">Rajasaab</h3>
            <p class="screen-name">Screen :Diamond</p>
            <div class="booking">
              <h2 class="price">550₹</h2>
              <a href="Rajasaab.jsp" class="btn">Buy Tickets</a>
            </div>
          </div>
          <div class="current-movie">
            <div class="cm-img-box">
              <img
                src="https://i.ytimg.com/vi/PT0lYT4O9tQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBSoWe4GI-mXyQvWEduV_wA-hJ7Jw"
                alt=""
              />
            </div>
            <h3 class="movie-title">Hit-III</h3>
            <p class="screen-name">Screen : Gold</p>
            <div class="booking">
              <h2 class="price">400₹</h2>
              <a href="Hit-III.jsp" class="btn">Buy Tickets</a>
            </div>
          </div>
          <div class="current-movie">
            <div class="cm-img-box">
              <img
                src="https://preview.redd.it/mirai-poster-v0-cje7ubj5faud1.png?width=640&crop=smart&auto=webp&s=4264a2daa5e11220dc5134e69f63bc0942d4836e"
                alt=""
              />
            </div>
            <h3 class="movie-title">Mirai</h3>
            <p class="screen-name">Screen : Silver</p>
            <div class="booking">
              <h2 class="price">300₹</h2>
              <a href="mirai.jsp" class="btn">Buy Tickets</a>
            </div>
          </div>
        </div>
      </div>
    </section>
     <script>
        document.getElementById("profileBox").addEventListener("click", function(event) {
            var dropdownMenu = document.getElementById("dropdownMenu");
            dropdownMenu.style.display = (dropdownMenu.style.display === "block" ? "none" : "block");
            event.stopPropagation(); // Prevent click from closing immediately
        });

        document.addEventListener("click", function(event) {
            var dropdownMenu = document.getElementById("dropdownMenu");
            if (!document.getElementById("profileBox").contains(event.target)) {
                dropdownMenu.style.display = "none";
            }
        });
    </script>

    
</body>


</html>