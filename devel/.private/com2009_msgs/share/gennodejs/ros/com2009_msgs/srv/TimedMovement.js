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

class TimedMovementRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.movement_request = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('movement_request')) {
        this.movement_request = initObj.movement_request
      }
      else {
        this.movement_request = '';
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimedMovementRequest
    // Serialize message field [movement_request]
    bufferOffset = _serializer.string(obj.movement_request, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.int32(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimedMovementRequest
    let len;
    let data = new TimedMovementRequest(null);
    // Deserialize message field [movement_request]
    data.movement_request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.movement_request);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'com2009_msgs/TimedMovementRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98ec7782393184833d09a76461890b3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string movement_request  # the type of movement to perform
    int32 duration           # the time (in seconds) to perform the movement for
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimedMovementRequest(null);
    if (msg.movement_request !== undefined) {
      resolved.movement_request = msg.movement_request;
    }
    else {
      resolved.movement_request = ''
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    return resolved;
    }
};

class TimedMovementResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimedMovementResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimedMovementResponse
    let len;
    let data = new TimedMovementResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'com2009_msgs/TimedMovementResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success             # a boolean response to indicate that the service has completed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimedMovementResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TimedMovementRequest,
  Response: TimedMovementResponse,
  md5sum() { return '01da3949d1975f89601d90342172dc85'; },
  datatype() { return 'com2009_msgs/TimedMovement'; }
};
