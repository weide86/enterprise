package com.enterprise.controller.front;

import com.enterprise.entity.Article;
import com.enterprise.entity.page.PageModel;
import com.enterprise.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 主页
 * Created by Cesiumai on 2016/6/15.
 */
@Controller
@RequestMapping("/")
public class IndexAction {
    @Autowired
    private ArticleService articleService;

    @RequestMapping({"/", "/index"})
    public String index(HttpServletRequest request) {
        Article article = new Article();
        article.setOffset(0);
        article.setPageSize(5);
        PageModel page = articleService.selectPageList(article);
        page.setPagerSize((page.getTotal() + page.getPageSize() - 1)
                / page.getPageSize());
        request.setAttribute("pager", page);
        return "/front/index";
    }


}

