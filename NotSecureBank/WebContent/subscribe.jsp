<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    
<jsp:include page="header.jspf"/>

<div id="wrapper" style="width: 99%;">
	<jsp:include page="toc.jspf"/>
    <td valign="top" colspan="3" class="bb">
		<div class="fl" style="width: 99%;">

			<h1>Subscribe</h1>
			
			<p>We recognize that things are always evolving and changing here at Not Secure Bank.
			Please enter your email below and we will automatically notify of noteworthy events.</p>
			
			<form action="doSubscribe" method="post" name="subscribe" id="subscribe" onsubmit="return confirmEmail(txtEmail.value);">
			  <table>
			    <tr>
			      <td colspan="2">
			        <div style="font-weight: bold; font-size: 12px; color: red;" id="message"><%=(request.getAttribute("message_subscribe")!=null)?request.getAttribute("message_subscribe"):"" %></div>
			      </td>
			    </tr>
			    <tr>
			      <td>
			        Email:
			      </td>
			      <td>
			        <input type="text" id="txtEmail" name="txtEmail" value="" style="width: 150px;">
			      </td>
			    </tr>
			    <tr>
			        <td></td>
			        <td>
			          <input type="submit" name="btnSubmit" value="Subscribe">
			        </td>
			      </tr>
			  </table>
			</form>
			
			<script>
				function confirmEmail(sEmail) {
				var msg = null;
				if (sEmail != "") {
					var emailFilter = /^[\w\d.%-]+@[\w\d.%-]+\.\w{2,4}$/;
					if (!emailFilter.test(sEmail)) {
					//It's better to provide a generic error message for all invalid email addresses, instead of differentiating between different types of errors.
					msg = "Invalid email address. Please try again.\n\n";
					}
				} else {
					msg = "Please enter an email address.\n\n";
				}
				if (msg !== null) {
					alert(msg);
					return false;
				} else {
					return true;
				}
				}
			</script>
			
		</div>    
    </td>	
</div>

<jsp:include page="footer.jspf"/>   