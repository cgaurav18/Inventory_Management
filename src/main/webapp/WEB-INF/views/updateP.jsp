<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 body {
  margin: 0;
  padding: 0;
  color: #fff;
  font-family: 'Open Sans', Helvetica, sans-serif;
  box-sizing: border-box;
}

/* Assign grid instructions to our parent grid container, mobile-first (hide the sidenav) */
.grid-container {
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 50px 1fr 50px;
  grid-template-areas:
    'header'
    'main'
    'footer';
  height: 100vh;
}

.menu-icon {
  position: fixed; /* Needs to stay visible for all mobile scrolling */
  display: flex;
  top: 5px;
  left: 10px;
  align-items: center;
  justify-content: center;
  background-color: #DADAE3;
  border-radius: 50%;
  z-index: 1;
  cursor: pointer;
  padding: 12px;
}

/* Give every child element its grid name */
.header {
  grid-area: header;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 16px;
  background-color: #648ca6;
}

/* Make room for the menu icon on mobile */
.header__search {
  margin-left: 42px;
}

.sidenav {
  grid-area: sidenav;
  display: flex;
  flex-direction: column;
  height: 100%;
  width: 240px;
  position: fixed;
  overflow-y: auto;
  transform: translateX(-245px);
  transition: all .6s ease-in-out;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.16), 0 0 0 1px rgba(0, 0, 0, 0.08);
  z-index: 2; /* Needs to sit above the hamburger menu icon */
  background-color: #394263;
}

.sidenav.active {
  transform: translateX(0);
}

.sidenav__close-icon {
  position: absolute;
  visibility: visible;
  top: 8px;
  right: 12px;
  cursor: pointer;
  font-size: 20px;
  color: #ddd;
}

.sidenav__list {
  padding: 0;
  margin-top: 85px;
  list-style-type: none;
}

.sidenav__list-item {
  padding: 20px 20px 20px 40px;
  color: #ddd;
}

.sidenav__list-item:hover {
  background-color: rgba(255, 255, 255, 0.2);
  cursor: pointer;
}

.main {
  grid-area: main;
  background-color: #8fd4d9;
}

.main-header {
  display: flex;
  justify-content: space-between;
  margin: 20px;
  padding: 20px;
  height: 150px;
  background-color: #e3e4e6;
  color: slategray;
}

.main-overview {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(265px, 1fr));
  grid-auto-rows: 94px;
  grid-gap: 20px;
  margin: 20px;
}

.overviewcard {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px;
  background-color: #d3d3;
}

.main-cards {
  column-count: 1;
  column-gap: 20px;
  margin: 20px;
}

.card {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  background-color: #82bef6;
  margin-bottom: 20px;
  -webkit-column-break-inside: avoid;
  padding: 24px;
  box-sizing: border-box;
}

/* Force varying heights to simulate dynamic content */
.card:first-child {
  height: 485px;
}

.card:nth-child(2) {
  height: 200px;
}

.card:nth-child(3) {
  height: 265px;
}

.footer {
  grid-area: footer;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 16px;
  background-color: #648ca6;
}

/* Non-mobile styles, 750px breakpoint */
@media only screen and (min-width: 46.875em) {
  /* Show the sidenav */
  .grid-container {
    grid-template-columns: 240px 1fr;
    grid-template-areas:
      "sidenav header"
      "sidenav main"
      "sidenav footer";
  }

  .header__search {
    margin-left: 0;
  }

  .sidenav {
    position: relative;
    transform: translateX(0);
  }

  .sidenav__close-icon {
    visibility: hidden;
  }
}

/* Medium screens breakpoint (1050px) */
@media only screen and (min-width: 65.625em) {
  /* Break out main cards into two columns */
  .main-cards {
    column-count: 2;
  }
}
 * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  background-color: #eee;
  font-family: 'helvetica neue', helvetica, arial, sans-serif;
  color: #222;
}

#form {
  max-width: 700px;
  padding: 2rem;
  box-sizing: border-box;
}

.form-field {
  display: flex;
  margin: 0 0 1rem 0;
}
label, input {
  width: 70%;
  padding: 0.5rem;
  box-sizing: border-box;
  justify-content: space-between;
  font-size: 1.1rem;
}
label {
  text-align: right;
  width: 30%;
}
input {
  border: 2px solid #aaa;
  border-radius: 2px;
}
</style>
</head>
<body>
<div class="grid-container">
    <div class="menu-icon">
     <i class="fas fa-bars header__menu"></i>
   </div>
    
   <header class="header">
     <div class="header__search"></div>
     <div class="header__avatar"></div>
   </header>
 
   <aside class="sidenav">
     <div class="sidenav__close-icon">
       <i class="fas fa-times sidenav__brand-close"></i>
     </div>
     <ul class="sidenav__list">
       <li class="sidenav__list-item"><a href="Addraw"><font color="white">Add Raw Material</font></a></li>
       <li class="sidenav__list-item"><a href="Viewraw"><font color="white">View Raw Material</font></a></li>
       <li class="sidenav__list-item"><a href="Addprocess"><font color="white">Add Processed Material</font></a></li>
       <li class="sidenav__list-item"><a href="Viewprocess"><font color="white">View Processed Material</font></a></li>
       <li class="sidenav__list-item"><a href="Viewlogs"><font color="white">Views Logs-raw</font></a></li>
       <li class="sidenav__list-item"><a href="Viewlogspro"><font color="white">Views Logs-processed</font></a></li>
       <li class="sidenav__list-item"><a href="unavailpro"><font color="white">Views Process Unavailble</font></a></li>
       <li class="sidenav__list-item"><a href="unavailraw"><font color="white">Views Raw Unavailble</font></a></li>
        <li class="sidenav__list-item"><a href="logout"><font color="white">Log Out</font></a></li>
     </ul>
   </aside>
 
   <main class="main">
     
       <div class="main-header__heading"><center><h1>Hello User</h1></center></div>
 <form method="post" action="insertP" id="form" class="validate">
    <div class="form-field">
      <label for="full-name">Enter Quantity</label>
      <input type="text" name="quantity" id="full-name" placeholder="" required />
    </div>
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
    <div class="form-field">
      <label for=""></label>
      <input type="submit" value="Update" />
    </div>
  </form>
     </div>


</main>
</body>
</html>