Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9588AB3A
	for <lists+linux-um@lfdr.de>; Tue, 13 Aug 2019 01:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6lZrGoPsl+vcdAQ6WzDcQrwZMkZzkqNIXYsMxVrCkc=; b=ETEb9BoXtAq+YQ
	RyMuMOy/BNxCCAYPgsZOd/gmXylBauZH/5b/uwd5YS8Zczdt2Qve4YCjS6NbFc7FIFAq3Gz8tpyaJ
	QvToEtoAsCdAgjp3LX85a+QcrOxWyRl2MOvePeO/vFBGE7i4v4u/EiktyrbP2IR4Nd82lWcuDgI1k
	1ttiB/vF53a+QUtYY6/kxcmR4/LhAw1tW2xrbCjZ4em/VVAHeOwqRdGSaPmORGHhlxaQfcUvigxXe
	7X6cmPxoCLhk8qHle6swDDzU7tiw6blyaSkeD8WQKw5WYZZtASeblzQyXfNKvWjEiF8k3zcHm+A9c
	gQEK8brBEGMapcE2Gu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxJox-0005ej-Gj; Mon, 12 Aug 2019 23:33:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxJov-0005df-8g
 for linux-um@lists.infradead.org; Mon, 12 Aug 2019 23:33:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id w3so13049443pgt.13
 for <linux-um@lists.infradead.org>; Mon, 12 Aug 2019 16:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LTfhhIMEVWBJ1fQ8dSU/yBqkpCSWczjteIKFZOpbLX8=;
 b=c9dOYm8jUrYmRfI5dEYJE2Wdnda5vlKFp8TRu/bv1paeS5Nb3I93x9HcYZ5ednOIno
 wGUiE4FUkpp0oe3pnvKv6pG5E0pSyHTSelc+rec86VL0eKpaX1nLvJb20gWSbR51tasf
 pgzzqgph/ELjX9q8SLyXYbEtVD5OMe2Bv9/Yd1k25uiMzejzz4xG8apO6djfJpMz8vcn
 XxJ7D8O/Gc8sfv/yWGdO+KIi2sqttmFcaUq9dKaYH8/xsyQWTJSFN1Jmxc4txyx4aB+z
 WGBS3gigW8iS9W0dFVg6j9MrUrNTENxkLxw6lLoD3AWXnMP8qmgG1uCcjQTNKLdPM7ys
 zaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LTfhhIMEVWBJ1fQ8dSU/yBqkpCSWczjteIKFZOpbLX8=;
 b=j6gjeYxQZsBxbl0lpvmawszWbd4UbZKdurRmLecW1B0WsA0BKdr90IeLmY9WbwhIh9
 /PVk1TnzkUrbrlbCtcuDlv5gco1EzMUldwjPLdKdPlQRGhKQzyDxMFpjeEzWGv+4xiKH
 Efdj61zceVXhyOEeuDr8wyH/bRprqWolIrnOx2IiyYTaPOwVkvCJtMg/tRl938Wi0v9u
 VuVupZXOu8LufDSE125fvGlBv7a9V2hLNds24X50A8lMb/b+6I1OrcCL/NNEhIxsscsW
 RaoEAqEAx7uWPq/xOnzLqJ5IKmlwUdkFRmvFTcHz0YDLzKcQjsDASI4stC1PNy6pG5LC
 ridg==
X-Gm-Message-State: APjAAAW+kN9/xQaoYq2hkq549IQ/EO8hzxW7Pb2JD5LnpEUetQOApd9M
 KOjt9kIG73uKK6gtwz67yDBApA==
X-Google-Smtp-Source: APXvYqxcDoap4N3EkfxGt7+4TrFgEHcuwub7I5n6cGzvsvHggQpTuDBEDm80K9tY5UT8aKNLpSv+9A==
X-Received: by 2002:a63:2a08:: with SMTP id q8mr31927403pgq.415.1565652822096; 
 Mon, 12 Aug 2019 16:33:42 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id j187sm13658683pfg.178.2019.08.12.16.33.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 16:33:41 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:33:36 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v12 03/18] kunit: test: add string_stream a std::stream
 like string builder
Message-ID: <20190812233336.GA224410@google.com>
References: <20190812182421.141150-1-brendanhiggins@google.com>
 <20190812182421.141150-4-brendanhiggins@google.com>
 <20190812225520.5A67C206A2@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812225520.5A67C206A2@mail.kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_163345_333272_667C99B0 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.4 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 3.3 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 03:55:19PM -0700, Stephen Boyd wrote:
> Quoting Brendan Higgins (2019-08-12 11:24:06)
> > +void string_stream_clear(struct string_stream *stream)
> > +{
> > +       struct string_stream_fragment *frag_container, *frag_container_safe;
> > +
> > +       spin_lock(&stream->lock);
> > +       list_for_each_entry_safe(frag_container,
> > +                                frag_container_safe,
> > +                                &stream->fragments,
> > +                                node) {
> > +               list_del(&frag_container->node);
> 
> Shouldn't we free the allocation here? Otherwise, if some test is going
> to add, add, clear, add, it's going to leak until the test is over?

So basically this means I should add a kunit_kfree and
kunit_resource_destroy (respective equivalents to devm_kfree, and
devres_destroy) and use kunit_kfree here?

> > +       }
> > +       stream->length = 0;
> > +       spin_unlock(&stream->lock);
> > +}
> > +

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
