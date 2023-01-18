import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="inline-edit"
export default class extends Controller {
  static targets = [ 'title', 'year', 'director' ];

  start() {
    const title = this.titleTarget.value;
    const year = this.yearTarget.value;
    const director = this.directorTarget.value;

    console.log(`IN HERE: ${title}, ${year}, ${director}`);
  }
}
