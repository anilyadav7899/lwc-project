import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';
export default class Mysubscriber extends LightningElement {
    message;
    connectedCallback(){
        this.register();
    }
    register(){
        pubsub.register('eventnotify',this.handleevent.bind(this));
    }
    handleevent(msgfromevnt){
        this.message = msgfromevnt
        ? JSON.stringify(msgfromevnt,null,'\t')
        : 'no message payload';
    }
}