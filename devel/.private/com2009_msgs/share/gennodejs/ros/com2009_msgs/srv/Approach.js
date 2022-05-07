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

class ApproachRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.approach_distance = null;
      this.approach_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('approach_distance')) {
        this.approach_distance = initObj.approach_distance
      }
      else {
        this.approach_distance = 0.0;
      }
      if (initObj.hasOwnProperty('approach_velocity')) {
        this.approach_velocity = initObj.approach_velocity
      }
      else {
        this.approach_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApproachRequest
    // Serialize message field [approach_distance]
    bufferOffset = _serializer.float32(obj.approach_distance, buffer, bufferOffset);
    // Serialize message field [approach_velocity]
    bufferOffset = _serializer.float64(obj.approach_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApproachRequest
    let len;
    let data = new ApproachRequest(null);
    // Deserialize message field [approach_distance]
    data.approach_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [approach_velocity]
    data.approach_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'com2009_msgs/ApproachRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2f9f80d4d9d15d06a0678fe2155a4db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 approach_distance  # Distance to approach an object (m)
    float64 approach_velocity  # Linear speed to approach (m/s)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApproachRequest(null);
    if (msg.approach_distance !== undefined) {
      resolved.approach_distance = msg.approach_distance;
    }
    else {
      resolved.approach_distance = 0.0
    }

    if (msg.approach_velocity !== undefined) {
      resolved.approach_velocity = msg.approach_velocity;
    }
    else {
      resolved.approach_velocity = 0.0
    }

    return resolved;
    }
};

class ApproachResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_message = null;
    }
    else {
      if (initObj.hasOwnProperty('response_message')) {
        this.response_message = initObj.response_message
      }
      else {
        this.response_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApproachResponse
    // Serialize message field [response_message]
    bufferOffset = _serializer.string(obj.response_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApproachResponse
    let len;
    let data = new ApproachResponse(null);
    // Deserialize message field [response_message]
    data.response_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.response_message);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'com2009_msgs/ApproachResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b45950c35bda99bcc3b6c93c7abc007';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string response_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApproachResponse(null);
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
  Request: ApproachRequest,
  Response: ApproachResponse,
  md5sum() { return '9969ab457f53a37a2d75e40a76a1f887'; },
  datatype() { return 'com2009_msgs/Approach'; }
};
