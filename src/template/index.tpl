<html>
    <head>
        {block 'head'}
            <title>{block 'title'}{if isset($title)}{$title} - {/if}Stitcher 1.0{/block}</title>
            {block 'meta'}
                <meta property="og:image" content="http://stitcher.pageon.be/img/stitcher.png" />
                <meta property="twitter:image" content="http://stitcher.pageon.be/img/stitcher.png" />
                <meta name="image" content="http://stitcher.pageon.be/img/stitcher.png" />
                {meta}
            {/block}
            {css src="main.scss" inline=true}
        {/block}
        <link rel="alternate" hreflang="en" href="https://www.stitcher.io" />
    </head>
    <body>
        {block 'body'}
            {block 'nav__main'}
                <nav class="nav__main">
                    <a href="/" {call active category='home'}>Install</a>
                    <a href="/guide/setting-up" {call active category='guide'}>Guide</a>
                    <a href="/about" {call active category='about'}>About</a>
                    <a href="/blog" {call active category='blog'}>Blog</a>
                </nav>
            {/block}

            {block 'content'}{/block}

            {block 'footer'}{/block}

            {block 'scripts'}{/block}

            {literal}
                <script>
                    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                    })(window,document,'script','/js/analytics.js','ga');

                    ga('create', 'UA-99779066-1', 'auto');
                    ga('send', 'pageview');
                </script>
            {/literal}
        {/block}
    </body>
</html>

{function 'active' category=null}
    {if $category && isset($pageCategory) && $pageCategory === $category}
        class="active"
    {/if}
{/function}
