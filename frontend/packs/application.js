/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// main page

import "init";
import "components/announcement/announcement";
import "components/event/event";
import "components/schedule/schedule";
import "components/speakers/speakers";
import "components/media/media";
import "components/place/place";
import "components/about/about";
import "components/contact/contact";
import "components/friends/friends";
import "components/coming-soon/coming-soon";

// errors
import "components/404/404";
import "components/422/422";
import "components/500/500";

// shared items
import "components/header/header";
import "components/follow/follow";
import "components/footer/footer";
import "components/aside/aside";

// show-event
import "components/show-photos/show-photos";
import "components/show-speakers/show-speakers";
import "components/show-videos/show-videos";
import "components/show-about/show-about";
import "components/show-nav/show-nav";

// simple pages
import "components/friends-page/friends-page";
import "components/about-page/about-page";

// slider
import "components/events/events";

// modal
import "components/modal/modal";

// rails-ujs
import Rails from "rails-ujs";

Rails.start();
