<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EShopper - Bootstrap Shop Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <title>JSP Page</title>

        <jsp:useBean id="blogd" class="dao.impl.BlogDAOImpl" scope="request"></jsp:useBean>
        </head>
        <body>
            <!-- Topbar Start -->
        <%@include file="components/Navbar.jsp" %>
        <!-- Navbar End -->

        <!-- Page Header Start -->
        <div class="container-fluid mb-5">
            <div class="row border-top px-xl-5">
                <div class="col-lg-12">
                    <div id="header-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="image/SlideShow/image1.jpg" alt="Image">
                            </div>
                            <div class="carousel-item active" style="height: 410px;">
                                <img class="img-fluid" src="image/SlideShow/image2.jpg" alt="Image">
                            </div>
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="image/SlideShow/image3.jpg" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Page Header End -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div class="container">
        <!--begin of menu-->
        <!--end of menu-->
        <!--begin of list article-->
        <c:forEach items="${listP}" var="o">
            <div class="row">
                <div class="col-sm-4" style="margin-bottom: 40px;">
                    <a href="DetailBlogController?ID=${o.getID()}" class="">
                        <img class="col-sm-12" src="image/${o.getImageLink()}">
                    </a>
                </div>
                <div class="col-sm-8">
                    <h3 class="title"> <a href="DetailBlogController?ID=${o.getID()}" class="">${o.getTitle()}</h3>
                    <p>${o.getMOdife()}</p>
                    <c:if test="${sessionScope.user.getIsAdmin()==0 && sessionScope.user.getIsSeller()==0 }">
                        <c:if test="${blogd.checkLikeBlog(sessionScope.user.getUserID(), o.getID()) == false}">
                            <a href="LikeBlogController?aid=${o.getID()}" style="text-decoration: none; margin-right: 10px">
                                <span style="font-size:30px">&#128077; Like</span>
                            </a>
                        </c:if>
                        <c:if test="${blogd.checkLikeBlog(sessionScope.user.getUserID(), o.getID()) == true}">
                            <a href="DisLikeBlogController?did=${o.getID()}" style="text-decoration: none; margin-right: 10px">
                                <span style="font-size:30px">&#128077; Liked</span>
                            </a>
                        </c:if>
                    </c:if>
                </div>
            </div>
        </c:forEach>
        <nav style="margin: 20px auto; width: 500px" aria-label="...">
            <ul class="pagination pagination-lg">
                <c:forEach begin="1" end="${blogd.totalPage()}" var="i">
                    <li class="page-item ${indexpage==i?"active":""}" ><a class="page-link" href="PagingController?index=${i}">${i}</a></li>
                    </c:forEach>
            </ul>
        </nav>
        <!--end of list article-->
    </div>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
        function search() {
            var searchText = document.getElementById("search_Blog").value;
            location.href = "searchBlogController?text=" + searchText;
            return false;
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <%@include file="components/Footer.jsp" %>

</body>
</html>