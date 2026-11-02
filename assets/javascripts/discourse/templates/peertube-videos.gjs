import { array } from "@ember/helper";
import dIcon from "discourse/ui-kit/helpers/d-icon";
import { i18n } from "discourse-i18n";
import PeertubeInstanceBrowser from "../components/peertube-instance-browser";

export default <template>
  <div class="peertube-videos-page">
    <div class="custom-page-intro category-title-header category-banner-videos">
      <div class="category-title-contents">
        <div class="category-logo aspect-image"></div>
        <h1 class="category-title">
          <span class="badge-category__wrapper">
            <span class="badge-category --style-icon">
              {{dIcon "film"}}
              <span class="badge-category__name">
                {{i18n "peertube_embed.page.title"}}
              </span>
            </span>
          </span>
        </h1>
        <div class="category-title-description">
          <div class="cooked">
            <div>{{i18n "peertube_embed.page.description"}}</div>
          </div>
        </div>
      </div>
    </div>

    {{#each (array @controller.feedKey) key="@identity"}}
      <PeertubeInstanceBrowser
        @categories={{@model.categories}}
        @category={{@controller.category}}
        @sort={{@controller.sort}}
        @onCategoryChange={{@controller.setCategory}}
        @onSortChange={{@controller.setSort}}
      />
    {{/each}}
  </div>
</template>
