*** Variables ***
${URL}                           https://automationtest.shop/index.php
${sign_in}                       css=a.login
${create_account_form}           xpath=//form[@id='create-account_form']
${input_email_create}            id=email_create
${submit_create_button}          id=SubmitCreate
${input_first_name}              id=customer_firstname
${input_last_name}               id=customer_lastname
${input_password}                id=passwd
${first_name}                    id=firstname 
${last_name}                     id=lastname
${company}                       id=company
${input_address}                 id=address1
${input_city}                    id=city
${state_select}                  id=id_state
${input_postcode}                id=postcode
${input_phone}                   id=phone_mobile
${submit_account_button}         id=submitAccount
${account_welcome_div}           id=my-account
${success_message}               xpath=//p[contains(text(), 'Welcome to your account')]
