import { Controller } from "@hotwired/stimulus"
$(function(){
  $('a[data-reload="true"').on('click', function(e) {
      window.location = $(e.target).attr('href');
      window.location.reload(true);
  });
});
