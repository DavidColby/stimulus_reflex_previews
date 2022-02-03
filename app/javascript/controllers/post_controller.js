import ApplicationController from './application_controller'
import debounce from "lodash/debounce"

export default class extends ApplicationController {
  connect() {
    super.connect()
    this.preview = debounce(this.preview.bind(this), 50)
  }

  preview() { 
    this.stimulate("Post#preview", { serializeForm: true })
  }
}
