<script type="text/javascript">

    var base_url = '<?php echo base_url(); ?>';

    var images = <?php echo json_encode($product['images']); ?>;
    var total = images.length;
    var imagecount = 1;

    function slide(x) {
        var Image = document.getElementById("imgSlide");
        imagecount = imagecount + x;
        if (imagecount > total) {
            imagecount = 1;
        }
        if (imagecount < 1) {
            imagecount = total;
        }
        Image.src = base_url + images[imagecount]['path'];
    }
</script>
<script>
$(document).ready(function(){
    $("#phone").click(function(){
        $("p").toggle();
    });
});
    $(document).ready(function() {
        $("#message").click(function() {
            $("textarea").toggle();
            $(".send").toggle();
        })
    })
</script>
<div id="productDesc">
    <div class="productDescLeft">
        <div id="slideshow">
            <img src="<?php echo base_url().$product['images'][0]['path']; ?>" id="imgSlide" style="max-width: 300px; max-height: 300px; display:block; margin: 0 auto;"/>
            <div id="leftHolder"><img  onClick="slide(1)" class="leftArrow" src="../img/arrow-left.png"/></div>
            <div id="rightHolder"><img onClick="slide(-1)" class="rightArrow" src="../img/arrow-right.png"/></div>
        </div>

    </div>
    <div class="productDescCenter">
        <table>
            <tr>
                <th>Name:</th>
                <td><?php echo $product['info']['name']; ?></td>
                <td><button id="favorite" style="width: 50px; height: 50px;"><i class="fa fa-heart fa-2x"></i></a></button></td>
            </tr>
            <tr>
                <th>Description:</th><br/>
                <td><?php echo $product['info']['descriptions']; ?></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td class="price"><span class="price"><?php echo $product['info']['price']; ?></span>&nbsp;<?php echo $product['currency']; ?></td>
            </tr>

        </table>
    </div>
    <div class="productDescRight">
        <button id="message"><i class="fa fa-envelope"></i>&nbsp;Send message</button><br>
        <form action="<?php echo base_url("Account/send")?>" method="post">
            <textarea style="" class="text"></textarea><br><button class="send" type="submit">SEND</button><br>
        </form>
        <span class="name"><?php echo $product['seller']['name']; ?></span><br>
        <?php echo $product['seller']['city'];?><br><br>

        <button id="phone"><i class="fa fa-phone"></i> Click for seller's phone number</button>
        <p style="display: none"><?php echo $product['seller']['tel']; ?></p>
    </div>
</div>