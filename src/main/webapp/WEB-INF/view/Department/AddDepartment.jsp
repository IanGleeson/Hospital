<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <div class="col-xs-12">
 <h4>Add Department</h4>
<form class="form-horizontal" role="form" action="Department?action=addDepartment" method="post">
 <div class="form-group">
<label for="Deptname" class="col-sm-4 control-label">Department Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="Deptname" name="Departmentname" required>
                        </div>
             </div>            
                    <div class="pull-right">
                            <button type="submit" class="btn btn-primary btn-sm">Add Department</button>
                    </div>
</form>
</div>

