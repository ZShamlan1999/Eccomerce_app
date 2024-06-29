enum StatusRequest {
  none,
  loading,
  success,
  failure,
  serverfailure,
  serverException,
  offlinefailure,
}

handlingData(response) {
  if (response is StatusRequest) {
  
    return response;
  } else {
    return StatusRequest.success;
  }
}
