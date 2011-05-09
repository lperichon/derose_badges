function init() {
  $("#jfmfs-container").jfmfs({
      max_selected: 1,
      max_selected_message: "{0} of {1} selected",
      friend_fields: "id,name,last_name",
      sorter: function(a, b) {
        var x = a.last_name.toLowerCase();
        var y = b.last_name.toLowerCase();
        return ((x < y) ? -1 : ((x > y) ? 1 : 0));
      }
  });
};

function publish(badge) {
    var url = "http://www.facebook.com/apps/application.php?id=197594353619331"
	var picture = badge.picture_url;
	var name = badge.name;
    var caption = badge.caption;
	var description = badge.description;
    var message = "¡Felicitaciones! Alcanzaste el grado de " + badge.name + '.';
	var actionLinks = [{ 'text': 'Enviar', 'href': url }];
	var properties = '';
    var friendSelector = $("#jfmfs-container").data('jfmfs');
    var to = friendSelector.getSelectedIds()[0];

	FB.ui({
		'method': 'feed',
        'to': to,
		'name':name,
		'link' : url,
		'properties':  properties,
		'picture' : picture,
		'caption' : caption,
		'description' : description,
		'message' : message,
		'action_links': actionLinks }, function(response){
		  if (response == null || response == undefined || response == false) {
		  }
          else {
              $.post("/assigns", { fb_user_id: to, badge_id: badge.id }, "json");
		  }
		}
      );
}