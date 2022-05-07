// Auto-generated. Do not edit!

// (in-package com2009_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetBoolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_signal = null;
    }
    else {
      if (initObj.hasOwnProperty('request_signal')) {
        this.request_signal = initObj.request_signal
      }
      else {
        this.request_signal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoolRequest
    // Serialize message field [request_signal]
    bufferOffset = _serializer.bool(obj.request_signal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoolRequest
    let len;
    let data = new SetBoolRequest(null);
    // Deserialize message field [request_signal]
    data.request_signal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'com2009_msgs/SetBoolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c14d11e782ee205fe33d007d480c988';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool request_signal       # A boolean signal to trigger something
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBoolRequest(null);
    if (msg.request_signal !== undefined) {
      resolved.request_signal = msg.request_signal;
    }
    else {
      resolved.request_signal = false
    }

    return resolved;
    }
};

class SetBoolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_signal = null;
      this.response_message = null;
    }
    else {
      if (initObj.hasOwnProperty('response_signal')) {
        this.response_signal = initObj.response_signal
      }
      else {
        this.response_signal = false;
      }
      if (initObj.hasOwnProperty('response_message')) {
        this.response_message = initObj.response_message
      }
      else {
        this.response_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoolResponse
    // Serialize message field [response_signal]
    bufferOffset = _serializer.bool(obj.response_signal, buffer, bufferOffset);
    // Serialize message field [response_message]
    bufferOffset = _serializer.string(obj.response_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoolResponse
    let len;
    let data = new SetBoolResponse(null);
    // Deserialize message field [response_signal]
    data.response_signal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [response_message]
    data.response_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.response_message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'com2009_msgs/SetBoolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2eebae83968108296ba3643d655e624e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response_signal      # A boolean response to indicate that the action has been performed
    string response_message   # A message to provide further information to the service caller
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBoolResponse(null);
    if (msg.response_signal !== undefined) {
      resolved.response_signal = msg.response_signal;
    }
    else {
      resolved.response_signal = false
    }

    if (msg.response_message !== undefined) {
      resolved.response_message = msg.response_message;
    }
    else {
      resolved.response_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetBoolRequest,
  Response: SetBoolResponse,
  md5sum() { return '809e515273297bb2c71988526658bce7'; },
  datatype() { return 'com2009_msgs/SetBool'; }
};
