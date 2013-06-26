<div class="modalTitle">
    <h2 id=""><?php echo $text_login_register ?> </h2>
</div>
<br/>
<div class="infoLogin logonPanel gaTrack gaPanel" id="login" style="height: 262px;">

    <div class="unit size1of2">
        <div class="rPadded">		                           
            <h3><?php echo $text_returning_customer; ?> </h3>
            <p><?php echo $text_i_am_returning_customer; ?></p>	
            <ul>
                <li class="formControl">
                    <label for="email" class="labelUp">
                        <?php echo $entry_email; ?>
                    </label>
                    <input type="text" name="email" value="" class="inputText logon gaFormField"/>
                </li>
                <li class="formControl">
                    <label for="password" class="labelUp">
                        <?php echo $entry_password; ?>
                    </label>
                    <input type="password" name="password" value="" class="inputText gaFormField"/>

                    <div class="passHelpLink">

                        <a href="<?php echo $forgotten; ?>" id="forgetPasswordLink"><?php echo $text_forgotten; ?></a>
                    </div>
                </li>

            </ul>

            <div class="actions">
                <button value="<?php echo $button_login; ?>" id="button-login" class="button butBlack actionButton" type="button">
                    <span>
                        Log in
                    </span>
                </button>
            </div>
            </form>
        </div>
    </div>
    <div class="unit size1of2 lastUnit">
        <div class="rPadded">			
            <h3><?php echo $text_new_customer; ?></h3>
            <p>
                <?php echo $text_register; ?>
            </p>

            <div class="actions">
                <input type="radio" name="account" value="register" id="register" checked="checked" style="display: none"/>
                <button class="button butBlack actionButton" type="button" value="<?php echo $button_continue; ?>" id="button-account">
                    <span>Create account</span>
                </button>
            </div>
        </div>
    </div>
</div>
