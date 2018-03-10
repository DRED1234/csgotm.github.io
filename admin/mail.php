<?php include ("header.php") ?>
	<section class="content">
	    <div class="container">
		    <div class="page-header"><h3>Рассылка Пользователям</h3></div>
			<form class="form-horizontal" method="POST" action="http://shaltay.com/admin/mail/adv">
        <input type="hidden" name="_token" value="6n2L28er1sVtOKPcO49N1sk8S4FqFgO3S2VJr8nV">
		  <fieldset>
		    <div class="form-group">
		      <label for="title" class="col-lg-2 control-label">Тема</label>
		      <div class="col-lg-10">
		        <input type="text" class="form-control" id="title" name="title" value="Сообщение для пользователей market.csgo.gs">
		      </div>
		    </div>
		    <div class="form-group">
		      <label for="body" class="col-lg-2 control-label">Сообщение</label>
		      <div class="col-lg-10">
		        <textarea class="form-control" rows="3" id="body" name="body"></textarea>
		        <span class="help-block">* это сообщение будет отправлено по электронной почте каждому пользователю</span>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-lg-10 col-lg-offset-2">
		        <button type="submit" class="btn btn-primary">Начать Рассылку</button>
		        <span class="help-block">* данная операция может занять несколько минут</span>
		      </div>
		    </div>
		  </fieldset>
		</form>
		<div class="row text-center">
            <span class="label"><a href="index.php">Админка</a></span>
        </div>
		</div>
	</section>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
