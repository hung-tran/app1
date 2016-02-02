function DisableControl(controlId)
{
  document.getElementById(controlId).disabled =true;
}

function DisableControl_SetTimeout(controlId, interval)
{
  setTimeout("DisableControl('" +controlId + "')", interval);
}

function ButtonClick(control)
{
  DisableControl_SetTimeout(control.id, 100);
}

