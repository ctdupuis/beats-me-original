import { environment } from '@rails/webpacker'
import { ProvidePlugin } from "webpack"

environments.plugins.append("Provide", new ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
}))

export default environment
