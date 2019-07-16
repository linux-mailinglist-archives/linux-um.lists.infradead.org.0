Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B296ADF7
	for <lists+linux-um@lfdr.de>; Tue, 16 Jul 2019 19:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrLcDPtjAc8T9Jr11xIwQG6fGYsuBL+7dOyAzG9ggRI=; b=JujW0VoWHLE6Q8
	MQHDntfdfOaSDjeL87yYkVvQFcHEOXgyJeKT/0yxNJpwFJPpqfRIMzNycK2os0hD3JBCkYWhEaGsC
	u7k72PlWTzRq3aRsii+FHtBdWYHlejm94gd0EWoONbW6yp4qZVIG7Do2Pupcx5Zg9bUpI87hdd9PT
	D1pqPNACzSdHDlfT+Y7F+zWK6APIlqFgK8OmmhdjyVkQvmlfW8OZlZOxo/b4WRPL1+kX4N4ZdyoYn
	OawTfKdOZSslW7tOtxYo4zlSszbGfRymLt3AEhVJkNnno6dhePB2xYfyliaWO687+wSeYQuRJrprw
	7MQS7tXteeIvWHKEq6UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnRcS-0001ba-6h; Tue, 16 Jul 2019 17:52:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnRcO-0001ai-Ks
 for linux-um@lists.infradead.org; Tue, 16 Jul 2019 17:52:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so9452655pfe.11
 for <linux-um@lists.infradead.org>; Tue, 16 Jul 2019 10:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nxEnHLXatCKhmQ8tqkHkTC9RIIficSilWz6s4BKeyXQ=;
 b=IR8gpax66RigZJS8zzOEEHslcoRtMBTJQr+BwYoG5krQI/IrW7RBJJOb1HnDxCU/yV
 QgfV9zvBkZxiaRdpVQ5UvleUCuWprZ5drSQYCn+Y2SQ0WJBxkU9y96Vg0A/X9/w6puUy
 wJPZSB5OIH+Fs7UZF2sgnWroJ6gzdmui3EJVbxSAUEw1zlnflSZQkCP2CyGkcZhrQ2Ik
 nTu4JglIMF5h/vJexddFclKM2bow42WXkycOAGCzBHj4V7nlFfCvnoPh2kZ9tat4r+lR
 ldeIM3HQ86qC69oeN4VGJIE3aUlKeqjYM8fm2x0XfJ1yNou0BI3BeFip69rcKSz9jBAN
 0rYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nxEnHLXatCKhmQ8tqkHkTC9RIIficSilWz6s4BKeyXQ=;
 b=pKFclkutqweVLxKNwcN3jFaUw4Z8d5WJ4+C51VLEFiYOg8O5ha1P89pi/7VTePYFN+
 qoTqCZ+RgnLHBiEddK+6Ff9qa2NCNNnPHvozVg8IeR21VaNo7ekacv1r8eFBy/vw3PF0
 cIPdZ66hr6AKYHFJbi3bsX4Zee+09DQkFxmRF/5MsVLm+SWbyxLjzv8yHCG5Ym2fPP55
 Ur/pc6kqWXPuvZ0uBF3kQdHnt1lDs+mfRoqSgRqLd3GMpdSB2Q0YXlmiY0CLLNd6wPxI
 TaYt+Cr/sSK8ZkKVYCGpK/G/VR1HJVvEFld9rsNBn/478Ak9K5qnck8eB2bQU/jAMOys
 neqg==
X-Gm-Message-State: APjAAAWjJuj+qp0cfrLzI1PJuXpogM7RzS7siOHMT5HhfzWzLyEcpIhr
 CSPPXuJT/esf8WxJq0r27ZqWVIGl0MM41XGWPwU6LA==
X-Google-Smtp-Source: APXvYqyaJ18vLD4kzF4vse9+yxk+DvjTEGfbRhJU4ABRtN/S/Q3OhUTQ5bxT7G2cnasvpqzT1qZSk1Dd9UfyhosJ/h0=
X-Received: by 2002:a63:b919:: with SMTP id z25mr35314546pge.201.1563299516676; 
 Tue, 16 Jul 2019 10:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190712081744.87097-1-brendanhiggins@google.com>
 <20190712081744.87097-5-brendanhiggins@google.com>
 <20190715221554.8417320665@mail.kernel.org>
 <CAFd5g47ikJmA0uGoavAFsh+hQvDmgsOi26tyii0612R=rt7iiw@mail.gmail.com>
 <CAFd5g44_axVHNMBzxSURQB_-R+Rif7cZcg7PyZ_SS+5hcy5jZA@mail.gmail.com>
 <20190716153002.49E292054F@mail.kernel.org>
In-Reply-To: <20190716153002.49E292054F@mail.kernel.org>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 16 Jul 2019 10:51:45 -0700
Message-ID: <CAFd5g44jruCZLunpQuDPnQS995x0F+Gxp99z4BoP_pLt=Hr1BQ@mail.gmail.com>
Subject: Re: [PATCH v9 04/18] kunit: test: add kunit_stream a std::stream like
 logger
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_105200_713586_69574B4B 
X-CRM114-Status: GOOD (  31.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 8:30 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Brendan Higgins (2019-07-16 01:37:34)
> > On Tue, Jul 16, 2019 at 12:57 AM Brendan Higgins
> > <brendanhiggins@google.com> wrote:
> > >
> > > On Mon, Jul 15, 2019 at 3:15 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > > >
> > > > Quoting Brendan Higgins (2019-07-12 01:17:30)
> > > > > diff --git a/include/kunit/kunit-stream.h b/include/kunit/kunit-stream.h
> > > > > new file mode 100644
> > > > > index 0000000000000..a7b53eabf6be4
> > > > > --- /dev/null
> > > > > +++ b/include/kunit/kunit-stream.h
> > > > > +/**
> > > > > + * struct kunit_stream - a std::stream style string builder.
> > > > > + *
> > > > > + * A std::stream style string builder. Allows messages to be built up and
> > > > > + * printed all at once.
> > > > > + */
> > > > > +struct kunit_stream {
> > > > > +       /* private: internal use only. */
> > > > > +       struct kunit *test;
> > > > > +       const char *level;
> > > >
> > > > Is the level changed? See my comment below, but I wonder if this whole
> > > > struct can go away and the wrappers can just operate on 'struct
> > > > string_stream' instead.
> > >
> > > I was inclined to agree with you when I first read your comment, but
> > > then I thought about the case that someone wants to add in a debug
> > > message (of which I currently have none). I think under most
> > > circumstances a user of kunit_stream would likely want to pick a
> > > default verbosity that maybe I should provide, but may still want
> > > different verbosity levels.
> > >
> > > The main reason I want to keep the types separate, string_stream vs.
> > > kunit_stream, is that they are intended to be used differently.
> > > string_stream is just a generic string builder. If you are using that,
> > > you are expecting to see someone building the string at some point and
> > > then doing something interesting with it. kunit_stream really tells
> > > you specifically that KUnit is putting together a message to
> > > communicate something to a user of KUnit. It is really used in a very
> > > specific way, and I wouldn't want to generalize its usage beyond how
> > > it is currently used. I think in order to preserve the author's
> > > intention it adds clarity to keep the types separate regardless of how
> > > similar they might be in reality.
>
> You may want to add some of these reasons to the commit text.

Will do.

> > > > > +
> > > > > +       if (!string_stream_is_empty(stream->internal_stream)) {
> > > > > +               kunit_err(stream->test,
> > > > > +                         "End of test case reached with uncommitted stream entries\n");
> > > > > +               kunit_stream_commit(stream);
> > > > > +       }
> > > > > +}
> > > > > +
> > > >
> > > > Nitpick: Drop this extra newline.
> > >
> > > Oops, nice catch.
> >
> > Not super important, but I don't want you to think that I am ignoring
> > you. I think you must have unintentionally deleted the last function
> > in this file, or maybe you are referring to something that I am just
> > not seeing, but I don't see the extra newline here.
>
> No worries. Sorry for the noise.
>
> > > property of the input, it may or may not be enough information on its
> > > own for the expectation to fail, but we want to share the result of
> > > the property check with the user regardless, BUT only if the
> > > expectation as a whole fails.
> > >
> > > Hence, we can have multiple `struct kunit_stream`s associated with a
> > > `struct kunit` active at any given time.
>
> Makes sense. I wasn't sure if there were more than one stream associated
> with a test. Sounds like there are many to one so it can't just be a
> member of the test. This could be documented somewhere so this question
> doesn't come up again.

Sounds good. Will do.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
