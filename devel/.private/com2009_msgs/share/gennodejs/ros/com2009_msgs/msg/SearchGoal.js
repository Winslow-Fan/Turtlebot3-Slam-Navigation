// Auto-generated. Do not edit!

// (in-package com2009_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SearchGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fwd_velocity = null;
      this.approach_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('fwd_velocity')) {
        this.fwd_velocity = initObj.fwd_velocity
      }
      else {
        this.fwd_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('approach_distance')) {
        this.approach_distance = initObj.approach_distance
      }
      else {
        this.approach_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SearchGoal
    // Serialize message field [fwd_velocity]
    bufferOffset = _serializer.float32(obj.fwd_velocity, buffer, bufferOffset);
    // Serialize message field [approach_distance]
    bufferOffset = _serializer.float32(obj.approach_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchGoal
    let len;
    let data = new SearchGoal(null);
    // Deserialize message field [fwd_velocity]
    data.fwd_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [approach_distance]
    data.approach_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'com2009_msgs/SearchGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '375e5634624feebdedb76dd02a851d2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal
    float32 fwd_velocity               # The speed at which the robot should move forwards (m/s)
    float32 approach_distance          # LaserScan distance to trigger the robot to stop (meters) 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SearchGoal(null);
    if (msg.fwd_velocity !== undefined) {
      resolved.fwd_velocity = msg.fwd_velocity;
    }
    else {
      resolved.fwd_velocity = 0.0
    }

    if (msg.approach_distance !== undefined) {
      resolved.approach_distance = msg.approach_distance;
    }
    else {
      resolved.approach_distance = 0.0
    }

    return resolved;
    }
};

module.exports = SearchGoal;
