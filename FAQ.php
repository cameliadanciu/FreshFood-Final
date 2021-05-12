<?php if (isset($_SESSION['C_ID']))?>


<?php include('includes/connection.php');?>  
<!--header area-->
<?php include 'includes/header.php'; ?>
<!--sidebar area-->
<?php include 'includes/sidebar.php'; ?>









<!DOCTYPE html>
<html>

<head>
    <title>faq</title>

    <style>
        /*FAQS*/
        
        .faq_question {
            margin: 0px;
            padding: 0px 0px 5px 0px;
            display: inline-block;
            cursor: pointer;
            font-weight: bold;
        }
        
        .faq_answer_container {
            display: none;
        }
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
        $(document).ready(function() {

            $('.faq_question').click(function() {

                if ($(this).parent().is('.open')) {
                    $(this).closest('.faq').find('.faq_answer_container').slideUp();
                    $(this).closest('.faq').removeClass('open');
                } else {
                    $('.faq_answer_container').slideUp();
                    $('.faq').removeClass('open');
                    $(this).closest('.faq').find('.faq_answer_container').slideDown();
                    $(this).closest('.faq').addClass('open');
                }

            });
        });
    </script>
</head>

<body>

    <div class="faq_container">
        <div class="faq">
            <div class="faq_question open">•	Can I return an item?</div>
            <div class="faq_answer_container" style="display: block;">
                <div class="faq_answer">Yes, you can. Please write the reason for returning the product and the order number and use the return sticker that comes with your package to send it back.
Returns are free of charge. Just drop the package at your local post office. 
</div>
            </div>
        </div>

        <div class="faq">
            <div class="faq_question">•	An item is missing from my order?</div>
            <div class="faq_answer_container">
                <div class="faq_answer">Please contact us at 0800 8800 123 if you have items in your Grocery Delivery that are:
Missing
Short in their ‘use by’ date (within 48 hours of delivery only)
Damaged

</div>
            </div>
        </div>

        <div class="faq">
            <div class="faq_question">•	How do I pay?</div>
            <div class="faq_answer_container">
                <div class="faq_answer">Currently our platform offers cash payments on delivery or collection. 
Security 
Your account 
Promotions and discounts
</div>
            </div>
        </div>
    </div>

</body>

</html>

          <!-- Icon Cards-->       
          
         <!--Icon Card area-->
<?php /*include 'includes/iconcards.php'*/; ?>
          <!-- Area Chart Example-->

          <!-- DataTables Example -->

      <!--footer area-->
<?php include 'includes/footer.php'; ?>