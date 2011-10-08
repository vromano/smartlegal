<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forms</title>
<style type="text/css">
    @import url(style.css);
	<!--[if lt IE 8]>
        @import url(style_ie.css);
	<![endif]-->
</style>
<script type="text/javascript" src="js/jquery-1.4.1.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="js/jsi.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/clock.js"></script>
</head>
<body>
<div class="container">
  <!-- HEADER -->
  <div class="header">
    <p class="pright"><a href="#">Dashboard</a> <a href="#" class="borders">Help</a> <a href="#">Settings</a></p>
    <p class="pleft">Welcome, Username you have <a href="#">12 new message</a></p>
    <div class="clr"></div>
    <a href="index.html"><img src="images/logo.gif" width="203" height="80" alt="Logo" class="logo" /></a>
    <p class="bright">
      <a href="#dialog1" name="modal" class="jsi_wbtn" id="jsi_account">My Account</a>
      <a href="#dialog2" name="modal" class="jsi_wbtn" id="jsi_settings">Settings</a>
      <a href="#" class="jsi_wbtn" id="jsi_logout">Logout</a>
    </p>
    <div class="clr"></div>
    <ul class="menu">
      <li><a href="index.html">Home</a></li>
      <li class="active"><a href="forms.html">Services</a></li>
      <li><a href="messages.html">Dashboard</a></li>
      <li><a href="tables.html">About Us</a></li>
      <li><a href="#">Contact us</a></li>
    </ul>
    <form id="formsearch" name="formsearch" method="post" action="" class="formsearch">
      <input name="button_search" src="images/search_right.gif" class="button_search" type="image" />
      <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="" type="text" /></span>
    </form>
    <div class="clr"></div>
  </div>

  <!-- CONTENT -->
  <div class="content">

    <!-- GREAT BLOCK -->
    <div class="block_gr vertsortable">

      <!-- gadget right 1 -->
      <div class="gadget jsi_gv"><h3>Form Example 1</h3>
        <div class="gadget_content">
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
          <p><a href="#">Learn more &raquo;</a></p>
        </div>
      </div>
      
      <!-- gadget right 2 -->
      <div class="gadget jsi_gv"><h3>Form Example 2</h3>
        <div class="gadget_content">
          <form action="" method="post" id="form_example" class="form_example">
          <ol>
            <li>
              <label for="name"><strong>Name</strong> (Small input form example)</label>
              <input id="name" name="name" class="text medium" />
            </li>
            <li>
              <label for="address"><strong>Address</strong> (Large input form example)</label>
              <input id="address" name="address" class="text large" />
            </li>
            <li>
              <label for="descr"><strong>Description</strong> (Large input form example)</label>
              <textarea id="descr" name="descr" rows="6" cols="50"></textarea>
            </li>
            <li>
              <label for="multiply"><strong>Multiply</strong> (small input form example)</label>
              <input id="multiply" name="multiply" type="hidden" value="" />
              <input id="multiply1" name="multiply1" class="text small" />
              <input id="multiply2" name="multiply2" class="text small" />
              <input id="multiply3" name="multiply3" class="text small" />
              <div class="clr"></div>
              <label for="multiply1" class="small">example</label>                
              <label for="multiply2" class="small">example</label>                
              <label for="multiply3" class="small">example</label>                
              <div class="clr"></div>
            </li>
            <li>
              <label for="dropdown"><strong>Drop down box</strong></label>
              <select id="dropdown" name="dropdown">
                <option selected="selected" value="Standart Results">Example 1</option>
                <option value="Example 2">Example 2</option>
                <option value="Example 3">Example 3</option>
                <option value="Example 4">Example 4</option>
                <option value="Example 5">Example 5</option>
                <option value="Example 6">Example 6</option>
              </select>
            </li>
            <li>
              <label for="date"><strong>Date</strong></label>
              <input id="date" name="date" type="hidden" value="" />
              <input id="dateyear" name="dateyear" maxlength="4" class="text year" /> /
              <input id="datemonth" name="datemonth" maxlength="2" class="text date" /> /
              <input id="dateday" name="dateday" maxlength="2" class="text date" />
              <div class="clr"></div>
              <label for="dateyear" class="year">YYYY</label>                
              <label for="datemonth" class="date">MM</label>                
              <label for="dateday" class="date">DD</label>                
              <div class="clr"></div>
            </li>
            <li>
              <label for="check"><strong>Checkbox</strong></label>
              <input name="check" type="checkbox" class="checkbox" />Lorem Ipsum is simply dummy text of the printing and typesetting industry.</input>
            </li>
          </ol>
          </form>
          <p><a href="#">Learn more &raquo;</a></p>
        </div>
      </div>

      <!-- gadget usertable -->
      <div class="gadget jsi_gv"><h3>Table Example</h3>
        <div class="gadget_content">
          <form action="" method="post" id="form_userstable">
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="glines">
            <tr>
              <th width="40" class="taleft"><input name="utc1" id="utc1" type="checkbox" /></th>
              <th width="100">Name</th>
              <th width="100">Username</th>
              <th width="90">Date</th>
              <th width="120">Location</th>
              <th>E-mail</th>
              <th width="50">Actions</th>
            </tr>
            <tr>
              <td><input name="utc2" id="utc2" type="checkbox" /></td>
              <td>John Smith</td>
              <td>jonnysmi</td>
              <td>12.24.1980</td>
              <td>San Francisco, CA</td>
              <td><a href="mailto:mwwweefail@yahoo.com">mwwweefail@yahoo.com</a></td>
              <td width="28"><a href="#"><img src="images/pimpa_tabs.gif" alt="picture" width="16" height="16" class="tabpimpa" /></a></td>
            </tr>
            <tr>
              <td><input name="utc3" id="utc3" type="checkbox" /></td>
              <td>John Smith</td>
              <td>jonnysmi</td>
              <td>12.24.1980</td>
              <td>San Francisco, CA</td>
              <td><a href="mailto:mail@yahoo.com">mail@yahoo.com</a></td>
              <td><a href="#"><img src="images/pimpa_tabs.gif" alt="picture" width="16" height="16" class="tabpimpa" /></a></td>
            </tr>
            <tr class="last">
              <td><input name="utc4" id="utc4" type="checkbox" /></td>
              <td>John Smith</td>
              <td>jonnysmi</td>
              <td>12.24.1980</td>
              <td>San Francisco, CA</td>
              <td><a href="mailto:m13dail@yahoo.com">m13dail@yahoo.com</a></td>
              <td><a href="#"><img src="images/pimpa_tabs.gif" alt="picture" width="16" height="16" class="tabpimpa" /></a></td>
            </tr>
          </table>
          </form>

        </div>
      </div>

    </div>

    <!-- SMALLER BLOCK -->
    <div class="block_sm vertsortable">

      <!-- gadget calendar and clock -->
      <div class="gadget jsi_gv"><h3>Calendar &amp; Time</h3>
        <div class="gadget_content">
          <div id="datepicker"></div>
          <div class="clr"></div>
          <p class="acenter bot24px"><a href="#" class="blackbutton">+ Add Event</a> <a href="#" class="blackbutton">List Events</a></p>
          <p class="timeclock"><span id="tm">11:57</span></p>
        </div>
      </div>

      <!-- gadget dashboard -->
      <div class="gadget jsi_gv"><h3>Dashboard</h3>
        <div class="gadget_content">
          <ul class="dashboard">
            <li class="li1"><a href="#">Dashboard</a></li>
            <li class="li2"><a href="#">Articles</a></li>
            <li class="li3"><a href="#">Galleries</a></li>
            <li class="li4"><a href="#">Calendar</a></li>
            <li class="li5"><a href="#">Users</a></li>
            <li class="li6"><a href="#">Statistics</a></li>
            <li class="li7"><a href="#">Settings</a></li>
          </ul>
        </div>
      </div>

      <!-- gadget left 5 -->
      <div class="gadget jsi_gv"><h3>Quick contact form</h3>
        <div class="gadget_content">
          <form action="" method="post" id="form_quickcontact" class="form_quickcontact">
          <ol><li>
            <label for="name">Your name:</label>
            <input id="name" name="name" class="text" />
            <div class="clr"></div>
          </li><li>
            <label for="email">Your contact email:</label>
            <input id="email" name="email" class="text" />
            <div class="clr"></div>
          </li><li>
            <label for="message">Your questons &amp; comments:</label>
            <textarea id="message" name="message" rows="6" cols="50"></textarea>
            <div class="clr"></div>
          </li><li>
            <a href="#" class="blackbutton">Contact us now</a>
            <!-- <input type="image" name="imageField" id="imageField" src="images/button_send.gif" class="send" /> -->
            <div class="clr"></div>
          </li></ol>
          </form>
        </div>
      </div>

    </div>

    <div class="clr"></div>
  </div>
  
  <!-- FOOTER -->
  <div class="footer">
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Dashboard</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
    <div class="clr"></div>
    <a href="#" class="logo"><img src="images/logo_footer.gif" width="201" height="89" alt="logo" class="logo" /></a>
    <p class="rfooter"><a href="http://www.dreamtemplate.com"><img src="images/icon_site.gif" alt="picture" width="27" height="22" /></a>Website Administration by <a href="http://www.webappskins.com"><strong>WebAppSkins</strong></a></p>
    <div class="clr"></div>
  </div>
  
  <!-- DIALOGS -->
  <div id="dialogboxes">
    <!-- dialog 1 -->
    <div id="dialog1" class="window">
      <div class="gadget jsi_gd"><h3>Thank you for</h3>
        <div class="gadget_content">
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry's standard dummy text</strong> ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.</p>
          <div class="linehr"></div>
          <p class="bot24px"><a href="#" class="blackbutton">Start Demo - Login Now</a></p>
        </div>
      </div>
    </div>
    <!-- dialog 2 -->
    <div id="dialog2" class="window">
      <div class="gadget jsi_gd"><h3>Welcome to Admin Area</h3>
        <div class="gadget_content">
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry's standard dummy text</strong> ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.</p>
          
          <div class="gadget jsi_msg jsi_msg_green"><h3>success message</h3>
            <div class="gadget_content">
              <p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Donec tempus ullamcorper lacus. Aliquam at purus. Sed viverra aliquam urna. Nam sapien lectus, pretium eu consequat ut temporet augue.</p>
            </div>
          </div>

          <div class="gadget jsi_msg jsi_msg_red"><h3>critical message</h3>
            <div class="gadget_content">
              <p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong> Donec tempus ullamcorper lacus. Aliquam at purus. Sed viverra aliquam urna. Nam sapien lectus, pretium eu consequat ut temporet augue.</p>
            </div>
          </div>
          
          <form action="" method="post" id="loginform" class="form_login">
          <ol><li>
            <label for="login">Your Login:</label>
            <input id="login" name="login" class="text" />
            <div class="clr"></div>
          </li><li>
            <label for="pwd">Your Password:</label>
            <input id="pwd" name="pwd" class="text" type="password" />
            <div class="clr"></div>
          </li></ol>
          </form>
          <p class="bot24px"><a href="#" class="blackbutton">Start Demo - Login Now</a></p>
        </div>
      </div>
    </div>
    <!-- Mask to cover the whole screen -->
    <div id="mask"></div>
  </div>

</div>

</body>
</html>
