<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TeamWork</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Css/project_page_style.css"  />
        <link rel="stylesheet" type="text/css" href="Css/jquery-ui.min.css" />
        <script src="jquery/jquery.js"></script>
        <script src="jquery/jquery-ui.min.js"></script>
        <script src="js_scripts/expand_menu.js"></script>
        <script src="js_scripts/project_member_ajax.js"></script>
        <script src="js_scripts/project_page.js"></script>
    </head>
    <body>
        <header>
           <div id="inline_img_1"></div>
           <div id="inline_img_2"></div>
             <ul id="top_right_options">
                <li>
                    <a id ="u_settings_expand" class="settings_button" href="#">${first_name}</a>
                    <ul id="user_settings" class="expandable_list">
                        <li class="expandable_list"><a class="topRightSubLink" href="/TeamWork/dashboard.jsp">Dashboard</a></li>
                        <li class="expandable_list"><a class="topRightSubLink" href="/TeamWork/log_out">Log Out</a></li>
                    </ul>
                </li>
         <!--       <li><a class="notifications_button" href="#">Notifications</a></li>
                <li><a class="chat_button" href="#">Team Chat</a></li> -->
            </ul>
        </header>
        <div id="subHeaderContainer">
            <div id="left_panel">
                <div id="profile_small_screen">
                    <p class="profile_text">Project : ${project_name} <br/><br/> Manager : ${project_manager}<br/><br/></p>
                </div> 
                <ul id="left_panel_list">
                    <li><a href="#" class="left_panel_btn" id="open_milestones_btn" >Milestones</a></li>
                    <li><a href="#" class="left_panel_btn" id="open_assignments_btn">Assignments</a></li>
                    <li><a href="#" class="left_panel_btn" id="open_issues_btn">Issues</a></li>
                    <li><a href="#" class="left_panel_btn" id="open_notes_btn">Notes</a></li>
                    <li><a href="#" class="left_panel_btn" id="open_members_btn">Members</a></li>
               <!--     <li><a href="#" class="left_panel_btn" id="open_ideas_btn">Ideas</a></li> -->
                </ul>
            </div>
            <div id="monitors_screen">
                <div id="hide_scrollbar">
                    <div id="milestones_monitor" class="monitor">
                        <p class="monitor_title">Milestones</p>
                        <ul class="monitor_tab_list">
                            <li><a class="monitor_tab_first" href="#" id="milestone_history_btn">Project Milestones</a></li>
                        </ul>
                        <div class="monitor_content">
                            <div id="milestone_history_tab" class="history">
                            </div>    
                        </div>
                    </div>
                    <div id="assignments_monitor" class="monitor">
                        <p class="monitor_title">Assignments</p>
                        <ul class="monitor_tab_list">
                            <li><a class="monitor_tab_first" href="#" id="pending_as_history_btn">Pending</a></li>
                            <li><a class="monitor_tab" href="#" id="completed_as_history_btn">Completed</a></li>
                        </ul>
                        <div class="monitor_content">
                            <div id="pending_as_history_tab" class="history">
                            </div>
                            <div id="completed_as_history_tab" class="history">
                            </div>
                        </div>
                    </div>
                    <div id="issues_monitor" class="monitor">
                        <p class="monitor_title">Issues</p>
                        <ul class="monitor_tab_list">
                            <li><a class="monitor_tab_first" href="#" id="unresolved_issues_btn">Unresolved</a></li>
                            <li><a class="monitor_tab" href="#" id="resolved_issues_btn">Resolved</a></li>
                            <li><a class="monitor_tab" href="#" id="post_issue_btn">Post Issue</a></li>
                        </ul>
                        <div class="monitor_content">
                            <div id="unresolved_issues_tab" class="history">
                            </div>
                            <div id="resolved_issues_tab" class="history">
                            </div>
                            <div id="post_issue_tab">
                                <form>
                                    Choose a name for the issue:<br/>
                                    <input type="text" id="issue_name" /><br/><br/>
                                    Write a description :<br/>
                                    <textarea id="issue_description" maxlength="800" class="big_description"></textarea><br/><br/>
                                    <button id="new_issue_btn" class="button2">Create</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="notes_monitor" class="monitor">
                        <p class="monitor_title">Notes</p>
                        <ul class="monitor_tab_list">
                            <li><a class="monitor_tab_first" href="#" id="my_notes_btn">My Notes</a></li>
                            <li><a class="monitor_tab" href="#" id="create_note_btn">Create Note</a></li>
                        </ul>
                        <div class="monitor_content">
                            <div id="my_notes_tab" class="history">
                            </div>
                            <div id="create_note_tab">
                                <form>
                                    Write your note
                                    <textarea id="notes_description" maxlength="800" class="big_description"></textarea><br/><br/>
                                    <button id="save_note_btn" class="button2">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="members_monitor" class="monitor">
                        <p class="monitor_title">Project Members : ${members}</p>
                        <ul class="monitor_tab_list">
                            <li><a class="monitor_tab_first" href="#" id="members_btn">Members</a></li>
                        </ul>
                        <div class="monitor_content">
                            <div id="members_tab" class="history">
                            </div>
                        </div>
                    </div>
              <!--      <div id="ideas_monitor">
                        
                    </div> -->
                    <div id="ajax_dialog" title="TeamWork says : ">
                        <p id="ajax_response_text"></p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
