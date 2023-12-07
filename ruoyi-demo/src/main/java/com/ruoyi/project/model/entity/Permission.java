package com.ruoyi.project.model.entity;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data

@Repository
public class Permission {
      String adminPermission="[\n" +
              "    {\n" +
              "      name: 'dashboard',\n" +
              "      parentId: 0,\n" +
              "      id: 1,\n" +
              "      meta: {\n" +
              "        title: 'menu.dashboard',\n" +
              "        icon: 'dashboard',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'RouteView',\n" +
              "      redirect: '/dashboard/workplace'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'workplace',\n" +
              "      parentId: 1,\n" +
              "      id: 7,\n" +
              "      meta: {\n" +
              "        title: 'menu.dashboard.monitor',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Workplace'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'monitor',\n" +
              "      path: 'https://www.baidu.com/',\n" +
              "      parentId: 1,\n" +
              "      id: 3,\n" +
              "      meta: {\n" +
              "        title: 'menu.dashboard.workplace',\n" +
              "        target: '_blank',\n" +
              "        show: false\n" +
              "      }\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'Analysis',\n" +
              "      parentId: 1,\n" +
              "      id: 2,\n" +
              "      meta: {\n" +
              "        title: 'menu.dashboard.analysis',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'Analysis',\n" +
              "      path: '/dashboard/analysis'\n" +
              "    },\n" +
              "\n" +
              "    {\n" +
              "      name: 'form',\n" +
              "      parentId: 0,\n" +
              "      id: 10,\n" +
              "      meta: {\n" +
              "        icon: 'form',\n" +
              "        title: 'menu.form'\n" +
              "      },\n" +
              "      redirect: '/form/base-form',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'basic-form',\n" +
              "      parentId: 10,\n" +
              "      id: 6,\n" +
              "      meta: {\n" +
              "        title: 'menu.form.basic-form'\n" +
              "      },\n" +
              "      component: 'BasicForm'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'step-form',\n" +
              "      parentId: 10,\n" +
              "      id: 5,\n" +
              "      meta: {\n" +
              "        title: 'menu.form.step-form'\n" +
              "      },\n" +
              "      component: 'StepForm'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'advanced-form',\n" +
              "      parentId: 10,\n" +
              "      id: 4,\n" +
              "      meta: {\n" +
              "        title: 'menu.form.advanced-form',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'AdvanceForm'\n" +
              "    },\n" +
              "\n" +
              "    {\n" +
              "      name: 'list',\n" +
              "      parentId: 0,\n" +
              "      id: 10010,\n" +
              "      meta: {\n" +
              "        icon: 'table',\n" +
              "        title: 'menu.list',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/list/table-list',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'table-list',\n" +
              "      parentId: 10010,\n" +
              "      id: 10011,\n" +
              "      path: '/list/table-list/:pageNo([1-9]\\\\d*)?',\n" +
              "      meta: {\n" +
              "        title: 'menu.list.table-list',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'TableList'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'basic-list',\n" +
              "      parentId: 10010,\n" +
              "      id: 10012,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.basic-list',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'StandardList'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'card',\n" +
              "      parentId: 10010,\n" +
              "      id: 10013,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.card-list',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'CardList'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'search',\n" +
              "      parentId: 10010,\n" +
              "      id: 10014,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list',\n" +
              "        show: false\n" +
              "      },\n" +
              "      redirect: '/list/search/article',\n" +
              "      component: 'SearchLayout'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'article',\n" +
              "      parentId: 10014,\n" +
              "      id: 10015,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list.articles',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'SearchArticles'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'project',\n" +
              "      parentId: 10014,\n" +
              "      id: 10016,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list.projects',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'SearchProjects'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'application',\n" +
              "      parentId: 10014,\n" +
              "      id: 10017,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list.applications',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'SearchApplications'\n" +
              "    },\n" +
              "\n" +
              "    {\n" +
              "      name: 'profile',\n" +
              "      parentId: 0,\n" +
              "      id: 10018,\n" +
              "      meta: {\n" +
              "        title: 'menu.profile',\n" +
              "        icon: 'profile',\n" +
              "        show: false\n" +
              "      },\n" +
              "      redirect: '/profile/basic',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'basic',\n" +
              "      parentId: 10018,\n" +
              "      id: 10019,\n" +
              "      meta: {\n" +
              "        title: 'menu.profile.basic',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'ProfileBasic'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'advanced',\n" +
              "      parentId: 10018,\n" +
              "      id: 10020,\n" +
              "      meta: {\n" +
              "        title: 'menu.profile.advanced',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'ProfileAdvanced'\n" +
              "    },\n" +
              "\n" +
              "    {\n" +
              "      name: 'result',\n" +
              "      parentId: 0,\n" +
              "      id: 10021,\n" +
              "      meta: {\n" +
              "        title: 'menu.result',\n" +
              "        icon: 'check-circle-o',\n" +
              "        show: false\n" +
              "      },\n" +
              "      redirect: '/result/success',\n" +
              "      component: 'PageView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'success',\n" +
              "      parentId: 10021,\n" +
              "      id: 10022,\n" +
              "      meta: {\n" +
              "        title: 'menu.result.success',\n" +
              "        hiddenHeaderContent: true,\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'ResultSuccess'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'fail',\n" +
              "      parentId: 10021,\n" +
              "      id: 10023,\n" +
              "      meta: {\n" +
              "        title: 'menu.result.fail',\n" +
              "        hiddenHeaderContent: true,\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'ResultFail'\n" +
              "    },\n" +
              "\n" +
              "    {\n" +
              "      name: 'exception',\n" +
              "      parentId: 0,\n" +
              "      id: 10024,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception',\n" +
              "        icon: 'warning',\n" +
              "        show: false\n" +
              "      },\n" +
              "      redirect: '/exception/403',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: '403',\n" +
              "      parentId: 10024,\n" +
              "      id: 10025,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception.not-permission',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Exception403'\n" +
              "    },\n" +
              "    {\n" +
              "      name: '404',\n" +
              "      parentId: 10024,\n" +
              "      id: 10026,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception.not-find',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Exception404'\n" +
              "    },\n" +
              "    {\n" +
              "      name: '500',\n" +
              "      parentId: 10024,\n" +
              "      id: 10027,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception.server-error',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Exception500'\n" +
              "    },\n" +
              "\n" +
              "    {\n" +
              "      name: 'account',\n" +
              "      parentId: 0,\n" +
              "      id: 10028,\n" +
              "      meta: {\n" +
              "        title: 'menu.account',\n" +
              "        icon: 'user',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/account/center',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'center',\n" +
              "      parentId: 10028,\n" +
              "      id: 10029,\n" +
              "      meta: {\n" +
              "        title: 'menu.account.center',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'AccountCenter'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'settings',\n" +
              "      parentId: 10028,\n" +
              "      id: 10030,\n" +
              "      meta: {\n" +
              "        title: 'menu.account.settings',\n" +
              "        hideHeader: true,\n" +
              "        hideChildren: true,\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/account/settings/basic',\n" +
              "      component: 'AccountSettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'BasicSettings',\n" +
              "      path: '/account/settings/basic',\n" +
              "      parentId: 10030,\n" +
              "      id: 10031,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.basic',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'BasicSetting'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'SecuritySettings',\n" +
              "      path: '/account/settings/security',\n" +
              "      parentId: 10030,\n" +
              "      id: 10032,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.security',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'SecuritySettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'CustomSettings',\n" +
              "      path: '/account/settings/custom',\n" +
              "      parentId: 10030,\n" +
              "      id: 10033,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.custom',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'CustomSettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'BindingSettings',\n" +
              "      path: '/account/settings/binding',\n" +
              "      parentId: 10030,\n" +
              "      id: 10034,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.binding',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'BindingSettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'NotificationSettings',\n" +
              "      path: '/account/settings/notification',\n" +
              "      parentId: 10030,\n" +
              "      id: 10034,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.notification',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'NotificationSettings'\n" +
              "    }\n" +
              "  ]";

      String userPermission = "[\n" +
              "    // dashboard\n" +
              "    {\n" +
              "      name: 'dashboard',\n" +
              "      parentId: 0,\n" +
              "      id: 1,\n" +
              "      meta: {\n" +
              "        title: 'menu.dashboard',\n" +
              "        icon: 'dashboard',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'RouteView',\n" +
              "      redirect: '/dashboard/workplace'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'card',\n" +
              "      parentId: 1,\n" +
              "      id: 7,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.card-list',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'CardList'\n" +
              "    },\n" +
              "       {\n" +
              "      name: 'form',\n" +
              "      parentId: 0,\n" +
              "      id: 10,\n" +
              "      meta: {\n" +
              "        icon: 'form',\n" +
              "        title: 'menu.form'\n" +
              "      },\n" +
              "      redirect: '/form/base-form',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'step-form',\n" +
              "      parentId: 10,\n" +
              "      id: 5,\n" +
              "      meta: {\n" +
              "        title: 'menu.form.step-form'\n" +
              "      },\n" +
              "      component: 'StepForm'\n" +
              "    },\n" +
              "    // list\n" +
              "    {\n" +
              "      name: 'list',\n" +
              "      parentId: 0,\n" +
              "      id: 10010,\n" +
              "      meta: {\n" +
              "        icon: 'table',\n" +
              "        title: 'menu.list',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/list/table-list',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'basic-list',\n" +
              "      parentId: 10010,\n" +
              "      id: 10012,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.basic-list',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'StandardList'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'search',\n" +
              "      parentId: 10010,\n" +
              "      id: 10014,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/list/search/article',\n" +
              "      component: 'SearchLayout'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'article',\n" +
              "      parentId: 10014,\n" +
              "      id: 10015,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list.articles',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'SearchArticles'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'project',\n" +
              "      parentId: 10014,\n" +
              "      id: 10016,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list.projects',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'SearchProjects'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'application',\n" +
              "      parentId: 10014,\n" +
              "      id: 10017,\n" +
              "      meta: {\n" +
              "        title: 'menu.list.search-list.applications',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'SearchApplications'\n" +
              "    },\n" +
              "\n" +
              "    // profile\n" +
              "    {\n" +
              "      name: 'profile',\n" +
              "      parentId: 0,\n" +
              "      id: 10018,\n" +
              "      meta: {\n" +
              "        title: 'menu.profile',\n" +
              "        icon: 'profile',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/profile/basic',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'basic',\n" +
              "      parentId: 10018,\n" +
              "      id: 10019,\n" +
              "      meta: {\n" +
              "        title: 'menu.profile.basic',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'ProfileBasic'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'advanced',\n" +
              "      parentId: 10018,\n" +
              "      id: 10020,\n" +
              "      meta: {\n" +
              "        title: 'menu.profile.advanced',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'ProfileAdvanced'\n" +
              "    },\n" +
              "\n" +
              "    // result\n" +
              "    {\n" +
              "      name: 'result',\n" +
              "      parentId: 0,\n" +
              "      id: 10021,\n" +
              "      meta: {\n" +
              "        title: 'menu.result',\n" +
              "        icon: 'check-circle-o',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/result/success',\n" +
              "      component: 'PageView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'success',\n" +
              "      parentId: 10021,\n" +
              "      id: 10022,\n" +
              "      meta: {\n" +
              "        title: 'menu.result.success',\n" +
              "        hiddenHeaderContent: true,\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'ResultSuccess'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'fail',\n" +
              "      parentId: 10021,\n" +
              "      id: 10023,\n" +
              "      meta: {\n" +
              "        title: 'menu.result.fail',\n" +
              "        hiddenHeaderContent: true,\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'ResultFail'\n" +
              "    },\n" +
              "\n" +
              "    // Exception\n" +
              "    {\n" +
              "      name: 'exception',\n" +
              "      parentId: 0,\n" +
              "      id: 10024,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception',\n" +
              "        icon: 'warning',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/exception/403',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: '403',\n" +
              "      parentId: 10024,\n" +
              "      id: 10025,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception.not-permission',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Exception403'\n" +
              "    },\n" +
              "    {\n" +
              "      name: '404',\n" +
              "      parentId: 10024,\n" +
              "      id: 10026,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception.not-find',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Exception404'\n" +
              "    },\n" +
              "    {\n" +
              "      name: '500',\n" +
              "      parentId: 10024,\n" +
              "      id: 10027,\n" +
              "      meta: {\n" +
              "        title: 'menu.exception.server-error',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'Exception500'\n" +
              "    },\n" +
              "\n" +
              "    // account\n" +
              "    {\n" +
              "      name: 'account',\n" +
              "      parentId: 0,\n" +
              "      id: 10028,\n" +
              "      meta: {\n" +
              "        title: 'menu.account',\n" +
              "        icon: 'user',\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/account/center',\n" +
              "      component: 'RouteView'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'center',\n" +
              "      parentId: 10028,\n" +
              "      id: 10029,\n" +
              "      meta: {\n" +
              "        title: 'menu.account.center',\n" +
              "        show: true\n" +
              "      },\n" +
              "      component: 'AccountCenter'\n" +
              "    },\n" +
              "    // 特殊三级菜单\n" +
              "    {\n" +
              "      name: 'settings',\n" +
              "      parentId: 10028,\n" +
              "      id: 10030,\n" +
              "      meta: {\n" +
              "        title: 'menu.account.settings',\n" +
              "        hideHeader: true,\n" +
              "        hideChildren: true,\n" +
              "        show: true\n" +
              "      },\n" +
              "      redirect: '/account/settings/basic',\n" +
              "      component: 'AccountSettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'BasicSettings',\n" +
              "      path: '/account/settings/basic',\n" +
              "      parentId: 10030,\n" +
              "      id: 10031,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.basic',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'BasicSetting'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'SecuritySettings',\n" +
              "      path: '/account/settings/security',\n" +
              "      parentId: 10030,\n" +
              "      id: 10032,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.security',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'SecuritySettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'CustomSettings',\n" +
              "      path: '/account/settings/custom',\n" +
              "      parentId: 10030,\n" +
              "      id: 10033,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.custom',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'CustomSettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'BindingSettings',\n" +
              "      path: '/account/settings/binding',\n" +
              "      parentId: 10030,\n" +
              "      id: 10034,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.binding',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'BindingSettings'\n" +
              "    },\n" +
              "    {\n" +
              "      name: 'NotificationSettings',\n" +
              "      path: '/account/settings/notification',\n" +
              "      parentId: 10030,\n" +
              "      id: 10034,\n" +
              "      meta: {\n" +
              "        title: 'account.settings.menuMap.notification',\n" +
              "        show: false\n" +
              "      },\n" +
              "      component: 'NotificationSettings'\n" +
              "    }\n" +
              "  ]";
    public String getAdminPermission() {
        return adminPermission;
    }
    public String getUserPermission () {
          return userPermission;
    }
}
