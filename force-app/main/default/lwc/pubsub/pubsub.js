const events = {};

const pubsub = {

    register(eventName, callback) {
        if (!events[eventName]) {
            events[eventName] = [];
        }
        events[eventName].push(callback);
    },

    fire(eventName, data) {
        if (events[eventName]) {
            events[eventName].forEach(callback => {
                callback(data);
            });
        }
    }
};

export default pubsub;