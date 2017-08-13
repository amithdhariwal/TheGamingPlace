<?php echo validation_errors('<div class="alert alert-danger">','</div>'); ?>
<form method="post" role="form" action="<?php echo base_url(); ?>users/register">
    <div class="form-group" >
        <label>First Name*</label>
        <input name="first_name" type="text" class="form-control"  placeholder="Enter Your First Name">
    </div>
    <div class="form-group" >
        <label>Last Name*</label>
        <input name="last_name" type="text" class="form-control"  placeholder="Enter Your Last Name">
    </div>

    <div class="form-group" >
        <label >Email Address</label>
        <input name="email" class="form-control"  type="email" placeholder="Enter Your Email Address">
    </div>
    <div class="form-group" >
        <label>Choose Username*</label>
        <input name="username" type="text" class="form-control"  placeholder="Choose Your Username">
    </div>
    <div class="form-group" >
        <label>Password*</label>
        <input name="password" type="password" class="form-control"  placeholder="Enter Password">
    </div>
    <div class="form-group" >
        <label>confirm Password*</label>
        <input name="password" type="password" class="form-control"  placeholder="Enter Password Again">
    </div>
    <button name="submit" type="submit" class="btn btn-primary">Register</button>
    <br>
</form>