
[1mFrom:[0m /home/ec2-user/environment/pf_machinaka/app/controllers/posts_controller.rb:16 PostsController#create:

    [1;34m10[0m: [32mdef[0m [1;34mcreate[0m
    [1;34m11[0m:   @post = [1;34;4mPost[0m.new(post_params)
    [1;34m12[0m:   @post.user_id = current_user.id
    [1;34m13[0m:   [1;34m# 投稿ページからタグを取得、,で区切って配列にする[0m
    [1;34m14[0m:   tag_list = params[[33m:post[0m][[33m:tag[0m].split([31m[1;31m"[0m[31m,[1;31m"[0m[31m[0m)
    [1;34m15[0m:     binding.pry
 => [1;34m16[0m:   [32mif[0m @post.save
    [1;34m17[0m:     @post.save_tags(tag_list)
    [1;34m18[0m: 
    [1;34m19[0m:     [1;34m# APIでタグ取得[0m
    [1;34m20[0m:     api_tags = [1;34;4mVision[0m.get_image_data(@post.post_images)
    [1;34m21[0m:     api_tags.each [32mdo[0m |tag|
    [1;34m22[0m:       @post.tags.create([35mname[0m: tag)
    [1;34m23[0m:     [32mend[0m
    [1;34m24[0m: 
    [1;34m25[0m:     redirect_to post_path(@post), [35mnotice[0m: [31m[1;31m'[0m[31m投稿しました[1;31m'[0m[31m[0m
    [1;34m26[0m:   [32melse[0m
    [1;34m27[0m:     render [33m:new[0m
    [1;34m28[0m:   [32mend[0m
    [1;34m29[0m: [32mend[0m

