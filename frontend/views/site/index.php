
<style type="text/css">
	html,body,p {
	    margin: 0;
	    padding: 0;
	    font-family: sans-serif;
	}
	.box-item{
		position: relative;
		float: left;
		width: 280px;
		height: 265px;
		margin: 10px;
	}
	.box-item .header-item{

	}
	.item-top-left{
		float: left;
		width: 50px;
		height: 50px;
	}
	.item-top-left img{
		border-radius: 50px;	
	}
	.item-top-right{
		float: left;
		width: 230px;
	}
	.title{
		white-space: nowrap; 
	    overflow: hidden;
	    text-overflow: ellipsis; 
	    width: 230px;
		line-height: 25px;
	}
	.title a{
		color: black;
	}
	.authors{
		line-height: 25px;
	}
	.authors a{
		color: black;	
	}
	.substance{
		overflow: hidden;
	    height: 50px;
	    line-height: 25px;
	}
	.illustration{
		float: left;		
	}
</style>
<?php foreach ($data as $rows): ?>	
<!-- box -->
<div class="box-item">
	<div class="header-item">
		<div class="item-top-left">
			<a href="#">
				
				<img src="<?= $rows['image_user']; ?>" style="width: 45px;height: 45px;margin: 2px">
				
			</a>
		</div>
		<div class="item-top-right">
			<div class="title">
				<a href="#" style="font-weight: bold;">
					<?=$rows['tieude_tt']; ?>
				</a>
			</div>
			<div class="authors">
				<a href="#"><b><?=$rows['id'];?></b></a>
				<b>- View - </b>
				<b>
				<?php
					
					$newDate = date("d-m-Y", strtotime($rows['time_up']));
					echo $newDate;
				?>
				</b>
			</div>
		</div>
		<div style="clear: both;"></div>
	</div>
	<div class="substance">
		<div>
	        <p>
			<?=$rows['noidung_tt'];?>
			</p>
		</div>
	</div>
	<div class="illustration">
		<a href="">
			<img src="<?= $rows['hinhanh_tt'];?>" style="border: 1px;width: 280px; height: 160px; ">
		</a>
	</div>
</div>
<!-- end box -->
<?php endforeach ?>