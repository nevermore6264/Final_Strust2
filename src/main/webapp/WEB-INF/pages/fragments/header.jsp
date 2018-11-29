<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- *** TOPBAR *** -->
<div id="top">
    <div class="container">
        <div class="col-sm-6 col-sm-offset-6" data-animate="fadeInDown">
            <ul class="menu">
                <s:if test="%{#session.user == null}">
                    <li><a href="<s:url action="login" />">Login</a></li>
                    <li><a href="<s:url action="register" />">Register</a></li>
                </s:if>
                <s:else>
                    <li><a href="<s:url action="index" />">Hello, <s:property value="%{#session.user.name}"/></a></li>
                    <li><a href="<s:url action="logout" />">Logout</a></li>
                </s:else>
            </ul>
        </div>
    </div>
</div>

<!-- *** TOP BAR END *** -->


<!-- *** NAVBAR *** -->

<div class="navbar navbar-default yamm" role="navigation" id="navbar">
    <div class="container">
        <div class="navbar-header">

            <a class="navbar-brand home" href="<s:url action="index" />" data-animate-hover="bounce">
                <img src="images/logo.png" style="width: 50px" alt="Group 6 logo" class="hidden-xs"/>
                <span class="sr-only">Six Group - go to homepage</span>
            </a>

            <div class="navbar-buttons">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-align-justify"></i>
                </button>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle search</span>
                    <i class="fa fa-search"></i>
                </button>
            </div>

        </div>
        <!--/.navbar-header -->

        <div class="navbar-collapse collapse" id="navigation">

            <ul class="nav navbar-nav navbar-left">
                <li><a class="active" href="<s:url action="index" />">Home</a></li>
                <li><a href="<s:url action="listClass" />">Class</a></li>
                <li><a href="<s:url action="listDepartment" />">Department</a></li>
                <li><a href="<s:url action="listProvince" />">Province</a></li>
                <li><a href="<s:url action="listStudent" />">Student</a></li>

            </ul>

        </div>
        <!--/.nav-collapse -->

        <div class="navbar-collapse collapse right" id="search-not-mobile">
            <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                <span class="sr-only">Toggle search</span>
                <i class="fa fa-search"></i>
            </button>
        </div>

    </div>

    <div class="collapse clearfix" id="search">

        <s:form cssClass="navbar-form" action="search" method="GET">
            <div class="input-group">
                <s:textfield cssClass="form-control" name="q" placeholder="Search"/>
                <span class="input-group-btn">
            <s:submit cssClass="btn btn-primary" value="Search"/>
          </span>
            </div>
        </s:form>

    </div>
    <!--/.nav-collapse -->

</div>
<!-- /.container -->
</div>
<!-- /#navbar -->

<!-- *** NAVBAR END *** -->