//****************************************************************************
//
// Copyright 2007-2016 Mentor Graphics Corporation 
// All Rights Reserved.
//
// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.
//
//*****************************************************************************
//
/*
Title: Questa MVC base types and functions
  Definition of base types and functions which may be used for interfacing
  between SystemVerilog and Questa MVC. To use these, import the QUESTA_MVC package.
*/

package QUESTA_MVC;

/* Group: Base Types */

// Handle for Transactions
typedef chandle questa_mvc_transaction_handle;


// Iterator to refer to Questa MVC Core objects
typedef chandle questa_mvc_iterator;


// Handle for external databases opened via Questa MVC
typedef chandle questa_mvc_external_db;


// Enum for controlling the output of the 'show_item' task
typedef enum 
{
    QUESTA_MVC_SHOW_ALL = 0,
    QUESTA_MVC_SHOW_LINE,
    QUESTA_MVC_SHOW_BASIC,
    QUESTA_MVC_SHOW_DATA,
    QUESTA_MVC_SHOW_STORAGE,
    QUESTA_MVC_SHOW_COMPLEXITY
} questa_mvc_show_content_enum;


// An enum for controlling the time-relationship on items
typedef enum
{
     QUESTA_MVC_TIME_RELATION_MIN = 0,
     QUESTA_MVC_TIME_RELATION_MAX,
     QUESTA_MVC_TIME_RELATION_RANDOM 
} questa_mvc_time_relation_enum;


// An enum for describing 'don't-care' states
typedef enum
{
     QUESTA_MVC_DONT_CARE_NO_CHANGE=0,
     QUESTA_MVC_DONT_CARE_RANDOM,
     QUESTA_MVC_DONT_CARE_0,
     QUESTA_MVC_DONT_CARE_1 
} questa_mvc_dont_care_enum;

/* Enum: questa_mvc_timecale_enum

An enum for specifying time-units, used by <questa_mvc_sv_convert_to_precision>.

QUESTA_MVC_TIME_AS   - Atto-seconds
QUESTA_MVC_TIME_FS   - Femto-seconds
QUESTA_MVC_TIME_PS   - Pico-seconds
QUESTA_MVC_TIME_NS   - Nano-seconds
QUESTA_MVC_TIME_US   - Micro-seconds
QUESTA_MVC_TIME_MS   - Milli-seconds
QUESTA_MVC_TIME_S    - Seconds
QUESTA_MVC_TIME_MIN  - Minutes
QUESTA_MVC_TIME_HR   - Hours
QUESTA_MVC_TIME_DY   - Days
QUESTA_MVC_TIME_WK   - Weeks
QUESTA_MVC_TIME_MTH  - Months
QUESTA_MVC_TIME_YR   - Years
QUESTA_MVC_TIME_X    - Unspecified time unit (equates to the simulator precision i.e. the smallest of the precision declarations in the design compilation units)
*/
typedef enum
{
    QUESTA_MVC_TIME_NULL = 0,
    QUESTA_MVC_TIME_AS   = 1,
    QUESTA_MVC_TIME_FS   = 2,
    QUESTA_MVC_TIME_PS   = 3,
    QUESTA_MVC_TIME_NS   = 4,
    QUESTA_MVC_TIME_US   = 5,
    QUESTA_MVC_TIME_MS   = 6,
    QUESTA_MVC_TIME_S    = 7,
    QUESTA_MVC_TIME_MIN  = 8,
    QUESTA_MVC_TIME_HR   = 9,
    QUESTA_MVC_TIME_DY   = 10,
    QUESTA_MVC_TIME_WK   = 11,
    QUESTA_MVC_TIME_MTH  = 12,
    QUESTA_MVC_TIME_YR   = 13,
    QUESTA_MVC_TIME_X    = 14
} questa_mvc_timecale_enum;


// An enum for controlling the enabling/disabling of the ability of a Questa MVC item to do various actions
typedef enum
{
    QUESTA_MVC_DISABLE_RECOGNITION = 'h1,
    QUESTA_MVC_DISABLE_GENERATION  = 'h2,
    QUESTA_MVC_DISABLE_ACTIVATION  = 'h4,
    QUESTA_MVC_DISABLE_EXECUTION   = 'h8,
    QUESTA_MVC_DISABLE_PARAMETERS  = 'h10,
    QUESTA_MVC_DISABLE_ALL         = 'hF
} questa_mvc_item_disable_enum ;

/* Enum: questa_mvc_item_comms_semantic

An enum for specifying a required communication semantic. For a complete explanation of the communication semantics, please see <Questa Verification IP Communication Semantics>.
*/
typedef enum
{
    QUESTA_MVC_COMMS_SENT                    = 'h1,
    QUESTA_MVC_COMMS_SEND                    = 'h2,
    QUESTA_MVC_COMMS_SENDING                 = 'h4,
    QUESTA_MVC_COMMS_ACTIVATE                = 'h8,
    QUESTA_MVC_COMMS_ACTIVATING              = 'h10,
    QUESTA_MVC_COMMS_ACTIVATES               = 'h20,
    QUESTA_MVC_COMMS_ACTIVATED               = 'h40,
    QUESTA_MVC_COMMS_RECEIVE                 = 'h80,
    QUESTA_MVC_COMMS_RECEIVED                = 'h100,
    QUESTA_MVC_COMMS_RECEIVING               = 'h200,
    QUESTA_MVC_COMMS_RECEIVE_CONSUMING       = 'h480,
    QUESTA_MVC_COMMS_RECEIVED_CONSUMING      = 'h500,
    QUESTA_MVC_COMMS_RECEIVING_CONSUMING     = 'h600,
    QUESTA_MVC_COMMS_SENDCONC                = 'h4002,
    QUESTA_MVC_COMMS_RECEIVE_VIRTUAL         = 'h4080,
    QUESTA_MVC_COMMS_SENT_TOP                = 'h8001,
    QUESTA_MVC_COMMS_SEND_TOP                = 'h8002,
    QUESTA_MVC_COMMS_SENDING_TOP             = 'h8004,
    QUESTA_MVC_COMMS_ACTIVATE_TOP            = 'h8008,
    QUESTA_MVC_COMMS_ACTIVATING_TOP          = 'h8010,
    QUESTA_MVC_COMMS_ACTIVATES_TOP           = 'h8020,
    QUESTA_MVC_COMMS_ACTIVATED_TOP           = 'h8040,
    QUESTA_MVC_COMMS_RECEIVE_TOP             = 'h8080,
    QUESTA_MVC_COMMS_RECEIVED_TOP            = 'h8100,
    QUESTA_MVC_COMMS_RECEIVING_TOP           = 'h8200,
    QUESTA_MVC_COMMS_RECEIVE_TOP_CONSUMING   = 'h8480,
    QUESTA_MVC_COMMS_RECEIVED_TOP_CONSUMING  = 'h8500,
    QUESTA_MVC_COMMS_RECEIVING_TOP_CONSUMING = 'h8600
} questa_mvc_item_comms_semantic;

/* Enum: questa_mvc_edge

An enum for specifying edge sensitivity.

QUESTA_MVC_POSEDGE      - Positive edge of the wire.
QUESTA_MVC_NEGEDGE      - Negative edge of the wire.
QUESTA_MVC_ANYEDGE      - Positive or Negative edge of the wire.
QUESTA_MVC_0_TO_1_EDGE  - A Transition from 0 to 1.
QUESTA_MVC_1_TO_0_EDGE  - A Transition from 1 to 0.
*/
typedef enum
{
    QUESTA_MVC_POSEDGE      = 0,
    QUESTA_MVC_NEGEDGE      = 1,
    QUESTA_MVC_ANYEDGE      = 2,
    QUESTA_MVC_0_TO_1_EDGE  = 3,
    QUESTA_MVC_1_TO_0_EDGE  = 4
} questa_mvc_edge;


/* Enum: questa_mvc_interface_config

An enum for specifying what is to be configured in the interface.

QUESTA_MVC_INTERFACE_CONFIG_NONE                     - Nothing.
QUESTA_MVC_INTERFACE_CONFIG_ALIVE                    - Turn the interface on / off. On by default
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_SEVERITY       - Change the severity of an assertion (see questa_mvc_severity).
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_MAX_COUNT      - Limit the number of times the given assertion is output to the transcript.
QUESTA_MVC_INTERFACE_CONFIG_ASSERTIONS_ON            - Turn all the assertions in the interface on / off. On by default
QUESTA_MVC_INTERFACE_CONFIG_ERROR_OUTPUT_ON          - Turn error output in the interface on / off. On by default
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_HALT_COUNT     - Halt simulation after the number of times the given assertion is output to the transcript.
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_ANY_HALT_COUNT - Halt simulation after the number of times any assertion is output to the transcript.
*/
typedef enum
{
    QUESTA_MVC_INTERFACE_CONFIG_NONE = 0,
    QUESTA_MVC_INTERFACE_CONFIG_ALIVE = 1,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_SEVERITY = 2,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_MAX_COUNT = 3,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTIONS_ON = 4,
    QUESTA_MVC_INTERFACE_CONFIG_ERROR_OUTPUT_ON = 5,
    QUESTA_MVC_INTERFACE_CONFIG_ERROR_ON = 6,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_HALT_COUNT = 7,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_ANY_HALT_COUNT = 8
} questa_mvc_interface_config;


/* Enum: questa_mvc_severity

An enum for specifying the severity of any assertion.

QUESTA_MVC_SEVERITY_INFO    - The equivalent of $info.
QUESTA_MVC_SEVERITY_WARNING - The equivalent of $warning.
QUESTA_MVC_SEVERITY_ERROR   - The equivalent of $error.
QUESTA_MVC_SEVERITY_FATAL   - The equivalent of $fatal.
*/
typedef enum
{
    QUESTA_MVC_SEVERITY_INFO    = 0,
    QUESTA_MVC_SEVERITY_WARNING = 1,
    QUESTA_MVC_SEVERITY_ERROR   = 2,
    QUESTA_MVC_SEVERITY_FATAL   = 3
} questa_mvc_severity;

/* Enum: questa_mvc_assertions

An enum for specifying severity for all assertions.

QUESTA_MVC_ALL_ASSERTIONS    - All assertions selected.
*/
typedef enum
{
    QUESTA_MVC_ALL_ASSERTIONS    = 10000
} questa_mvc_assertions;

// Class used to represent time in SystemVerilog and enable conversion to Questa MVC simulation time units
class questa_mvc_time;

    longint                     m_time_value;
    questa_mvc_timecale_enum    m_time_unit;

    function new( longint time_value, questa_mvc_timecale_enum time_unit );
        m_time_value    = time_value;
        m_time_unit     = time_unit;
    endfunction

    function longint convert_to_precision();
        return questa_mvc_sv_convert_to_precision( m_time_value, m_time_unit );
    endfunction

endclass

/* Group: Global Functions */

// Function for returning a handle for iterating over Questa MVC objects whose names match the given pattern for hierarchical names
import "DPI-C"  questa_mvc_sv_find = function questa_mvc_iterator questa_mvc_find(input string pattern);

// Function for testing a handle to see if it points to a valid Questa MVC object
import "DPI-C"  questa_mvc_sv_valid = function bit questa_mvc_valid_handle(input questa_mvc_iterator iter);

// Function for advancing a Questa MVC handle to point to the next Questa MVC object satisfying the pattern
import "DPI-C"  questa_mvc_sv_advance = function void questa_mvc_advance_handle(input questa_mvc_iterator iter);

// Function for releasing a Questa MVC handle after use. DO NOT USE THE HANDLE AFTER CALLING THIS.
import "DPI-C"  questa_mvc_sv_release = function void questa_mvc_release_handle(inout questa_mvc_iterator iter);

// Function for returning the name of the Questa MVC object pointed to by the Questa MVC handle
import "DPI-C"  questa_mvc_sv_name = function string questa_mvc_name_from_iterator(input questa_mvc_iterator iter);

// Function for pausing a Questa MVC clock pointed to by the handle. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_pause_clock = function bit questa_mvc_pause_clock(input questa_mvc_iterator iter);

// Function for pausing all Questa MVC clocks
import "DPI-C"  questa_mvc_sv_pause_clocks = function void questa_mvc_pause_clocks();

// Function for resuming a Questa MVC clock pointed to by the handle. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_resume_clock = function bit questa_mvc_resume_clock(input questa_mvc_iterator iter);

// Function for resuming all Questa MVC clocks
import "DPI-C"  questa_mvc_sv_resume_clocks = function void questa_mvc_resume_clocks();

// Function for restarting a Questa MVC clock pointed to by the handle. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_restart_clock = function bit questa_mvc_restart_clock(input questa_mvc_iterator iter);

// Function for restarting all Questa MVC clocks
import "DPI-C"  questa_mvc_sv_restart_clocks = function void questa_mvc_restart_clocks();

// Function for advancing a Questa MVC clock pointed to by the handle. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_advance_clock = function bit questa_mvc_advance_clock(input questa_mvc_iterator iter);

// Function for advancing all Questa MVC clocks
import "DPI-C"  questa_mvc_sv_advance_clocks = function void questa_mvc_advance_clocks();

// Function for acquiring a Questa MVC clock pointed to by the handle. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_acquire_clock = function bit questa_mvc_acquire_clock(input questa_mvc_iterator iter);

// Function for acquiring all Questa MVC clocks
import "DPI-C"  questa_mvc_sv_acquire_clocks = function void questa_mvc_acquire_clocks();

// Function for releasing a Questa MVC clock pointed to by the handle. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_release_clock = function bit questa_mvc_release_clock(input questa_mvc_iterator iter);

// Function for releasing all Questa MVC clocks
import "DPI-C"  questa_mvc_sv_release_clocks = function void questa_mvc_release_clocks();

// Function for opening an external database for saving history. Returns a handle to a Questa MVC object representing the external database
import "DPI-C"  questa_mvc_sv_hist_create = function questa_mvc_external_db questa_mvc_hist_create(input string db_type,input  string fileName);

// Function for closing an external database. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_close = function bit questa_mvc_hist_close(input questa_mvc_external_db db);

// Function for telling a Questa MVC object (pointed to by the handle) to add its history to an external database during simulation. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_add = function bit questa_mvc_hist_add(input questa_mvc_iterator iter,input questa_mvc_external_db db);

// Function for telling all Questa MVC objects whose names satisfy a pattern to add their history to the external database during simulation. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_add_pattern = function bit questa_mvc_hist_add_pattern(input string pattern,input questa_mvc_external_db db);

// Function for telling a Questa MVC object (pointed to by the handle) to cancel adding its history to an external database during simulation. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_cancel = function bit questa_mvc_hist_cancel(input questa_mvc_iterator iter,input questa_mvc_external_db db);

// Function for telling all Questa MVC objects whose names satisfy a pattern to cancel adding their history to the external database during simulation. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_cancel_pattern = function bit questa_mvc_hist_cancel_pattern(input string pattern,input questa_mvc_external_db db);

// Function for telling a Questa MVC object pointed to by a handle to record internally its history. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_record = function bit questa_mvc_hist_record(input questa_mvc_iterator iter,input int hist_number);

// Function for telling all Questa MVC objects whose names satisfy a pattern to record internally its history. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_hist_record_pattern = function bit questa_mvc_hist_record_pattern(input string pattern,input int hist_number);

// Function for new item within the given hierarchy. Returns a handle to a Questa MVC object representing the item
import "DPI-C"  questa_mvc_sv_item_create = function longint unsigned questa_mvc_item_create(input string name,input string hierarchy);

// Function for giving the handle to the given item with full hierarchy. Returns a handle to a Questa MVC object representing the item
import "DPI-C"  questa_mvc_sv_item_handle = function longint unsigned questa_mvc_item_handle(input string name);

// Function for giving the full hierarchic name of the item referred to by the handle. Returns the string name of the item
import "DPI-C"  questa_mvc_sv_item_name = function string questa_mvc_item_name(input longint unsigned handle);

// Function for giving the parameter values of the item referred to by the handle. Returns the string containing the parameter values
import "DPI-C"  questa_mvc_sv_item_params = function string questa_mvc_item_params(input longint unsigned handle);

// Function for new instance of the item. Returns a handle to a Questa MVC object representing the instance
import "DPI-C"  questa_mvc_sv_item_begin = function longint unsigned questa_mvc_item_begin(input longint unsigned handle, input string inst_name, input longint begin_time);

// Function for adding textual history to an instance of the item. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_item_history = function bit questa_mvc_item_history(input longint unsigned handle,input string history);

// Function for ending an instance of the item. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_item_end = function bit questa_mvc_item_end(input longint unsigned handle,input longint end_time);

// Function for finishing an instance of the item. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_item_finish = function bit questa_mvc_item_finish(input longint unsigned handle);

// Function for linking an instance of the item to an instance of another item. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_item_link = function bit questa_mvc_item_link(input longint unsigned src_handle,input longint unsigned dst_handle);

// Function for counting the number of items linked to an instance of the item. Returns the count
import "DPI-C"  questa_mvc_sv_item_linked_count = function int questa_mvc_item_linked_count(input longint unsigned handle);

// Function for obtaining handles to the items linked to an instance of the item. Returns 1 if successful, 0 otherwise
import "DPI-C"  questa_mvc_sv_item_linked_handles = function bit questa_mvc_item_linked_handles(input longint unsigned handle, inout longint unsigned handles[]);

// Function for obtaining the being time of an instance of the item. Returns the begin time
import "DPI-C"  questa_mvc_sv_item_time_begin = function longint questa_mvc_item_time_begin(input longint unsigned handle);

// Function for obtainign the end time of an instance of the item. Returns the end time
import "DPI-C"  questa_mvc_sv_item_time_end = function longint questa_mvc_item_time_end(input longint unsigned handle);

// Function for printing a summary of the state of Questa MVC.
import "DPI-C"  questa_mvc_sv_show = function void questa_mvc_show( string show_command );

// Function to run a command.
import "DPI-C"  questa_mvc_sv_do_cmd = function void questa_mvc_do_cmd( string command );

`ifndef INCA
// Function for printing the details of a Questa MVC object pointed to by the handle. Then enum controls the detail.
import "DPI-C"  questa_mvc_sv_show_item = function void questa_mvc_show_item(input questa_mvc_iterator iter,input questa_mvc_show_content_enum content);

// Function for setting the time-relation on a Questa MVC object pointed to by a handle. In the case of rel = QUESTA_MVC_TIME_RELATION_RANDOM, the seed string is used to generate a seed for random-number generation. Returns 1 if successful, 0 otherwise. 
import "DPI-C"  questa_mvc_sv_set_time_relation = function bit questa_mvc_set_time_relation(input questa_mvc_iterator iter,input questa_mvc_time_relation_enum rel, input string seed);

// Function for setting the time-relation on Questa MVC objects whose hierarchical names match a pattern. In the case of rel = QUESTA_MVC_TIME_RELATION_RANDOM, the seed string is used to generate a seed for random-number generation. Returns 1 if successful, 0 otherwise. 
import "DPI-C"  questa_mvc_sv_set_time_relation_pattern = function bit questa_mvc_set_time_relation_pattern(input string pattern,input questa_mvc_time_relation_enum rel, input string seed);

// Function for setting the "don't-care" state on a Questa MVC object pointed to by a handle. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_set_dont_care = function bit questa_mvc_set_dont_care(input questa_mvc_iterator iter,input questa_mvc_dont_care_enum care);

// Function for setting the "don't-care" state on Questa MVC objects whose hierarchical names match a pattern. Returns 1 if successful, 0 otherwise.
import "DPI-C"  questa_mvc_sv_set_dont_care_pattern = function bit questa_mvc_set_dont_care_pattern(input string pattern,input questa_mvc_dont_care_enum care);

/* Function: questa_mvc_sv_convert_to_precision

A function for calculating the number of simulator time-steps (the smallest of all timeprecision declarations in the design) 
corresponding to an absolute time interval. See <Configuration of Time-Units> for a description of the use of this function.

time_value - a 64-bit signed integer giving the number of time-units required
time_unit - an enum (of type <questa_mvc_timecale_enum>), specifying the time-unit 
*/
import "DPI-C"  questa_mvc_sv_convert_to_precision = function longint questa_mvc_sv_convert_to_precision( longint time_value, questa_mvc_timecale_enum time_unit );

`else
import "DPI-C"  questa_mvc_sv_convert_to_precision = function longint questa_mvc_sv_convert_to_precision( longint time_value, int time_unit );
`endif

// Function for getting the version of the Questa Verification IP.
import "DPI-C"  questa_vip_get_version = function string questa_vip_get_version(input string version);

// Function for getting the Current platform for the Questa Verification IP.
import "DPI-C"  questa_vip_get_platform = function string questa_vip_get_platform();

// Static class, to print the Questa Verification IP Copyright Banner.
// DO NOT MODIFY.
class Questa_Verification_IP_Banner #( string lib_version = "DEV" , string build_date = "__DATE__" );
  (* elab_init *)static bit version_string = banner_display();
  static function bit banner_display();
    bit ret_val = 1;
    string sim_version = questa_vip_get_version( lib_version );
    string platform    = questa_vip_get_platform();
    $display("");
    $display("//  Questa Verification IP");
    $display("//  Version %s%s %s %s", lib_version, sim_version, platform, build_date);
    $display("//");
    $display("//  Copyright 2007-2016 Mentor Graphics Corporation");
    $display("//  All Rights Reserved.");
    $display("//");
    $display("//  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION");
    $display("//  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS");
    $display("//  LICENSORS AND IS SUBJECT TO LICENSE TERMS.");
    $display("");
    return ret_val;
  endfunction
endclass


/* 
Class: questa_mvc_reporter
    A base class for supporting user-specific behaviour in response to a report from the MVC.
    See <Customizing Error-Reporting> for an explanation of this class and its use.
*/
class questa_mvc_reporter;

    // Variable: name
    //
    // A string holding the name of this reporter
    string name;

    // Function: new
    //
    // The constructor for the reporter object
    //
    // n - A string giving the name for this object
    function new(string n = "QUESTA_MVC");
        name = n;
    endfunction

    // Function: report_message
    // 
    // This function will be called when a report is available.  Overload this virtual method in a sub-class if you want to do something else with the report.
    //
    // category     - A string giving a category for the report. 
    // fileName     - Unused parameter - left in for backward compatibility.
    // lineNo       - Unused parameter - left in for backward compatibility.
    // objectName   - The name of the Questa MVC object which emitted the report (or which the report is about).
    // instanceName - The design instance containing the source of the report.
    // error_no     - A Questa MVC specific error string, usually containing an error number specific to the protocol (may be the empty string).
    // typ          - The severity of the report. One of CONTINUE | NOTE | MESSAGE | WARNING | ERROR | FATAL.
    // mess         - The text of the report message.
    //
    virtual function void report_message(string category, string fileName, int lineNo, string objectName, string instanceName, string error_no, string typ, string mess);
        $display("%s %s-%s %s %s %s", typ, category, error_no, objectName, instanceName, mess);
    endfunction


endclass

endpackage:QUESTA_MVC
