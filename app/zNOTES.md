
STRONG PARAMS Disabled then Re-enabled

Let's enable Strong Params: 
    - open up config/application.rb 
    - delete the line that says: config.action_controller.permit_all_parameters = true.
    - Now restart your rails server


THE HACK CODE:

    <br>
    <label>Description:</label>
    <br>
    <input type="text" value="malicious description" name="post[description]" id="post_description">


PERMIT -vs- REQUIRE
The #require method is the most restrictive. It means that the params that get passed in must contain a key 

