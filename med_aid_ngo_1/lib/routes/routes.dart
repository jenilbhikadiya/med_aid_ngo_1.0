class AppRoutes {
  static const splash = "/";
  static const login = "/login";
  static const forgotPassword = "/forgot-password";
  static const resetPassword = "/reset-password";
  static const addNewTask = "/new-task";
  static const tasks = "/tasks";
  static const adminVerfication = "/admin-verification";
  static const taskHistory = "/task-history";
  static const futureTasks = "/future-tasks";
  static const client = "/client";
  static const addClient = "/add-client";

  static const staff = "/staff";
  static const group = "/group";
  static const taskMaster = "/task-master";
  static const subTask = "/sub-task";
  static const accountant = "/accountant";
  static const financialYear = "/financial-year";
  static const userLog = "/user-log";
  static const onDemandReport = "/on-demand-report";
  static const String dashboard = "/dashboard";
  static List sidebarMenuItems = [
    dashboard,
    addNewTask,
    tasks,
    adminVerfication,
    taskHistory,
    futureTasks,
    addClient,
    client,
    staff,
    group,
    taskMaster,
    subTask,
    accountant,
    financialYear,
    userLog,
    onDemandReport,
  ];
}
