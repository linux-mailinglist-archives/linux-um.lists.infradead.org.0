Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8906560CBE
	for <lists+linux-um@lfdr.de>; Fri,  5 Jul 2019 22:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AQZn7bAvTKXYSZqaDHiXxl4CqocGd1BS+rJttdmdEs=; b=Eddxo94Ldy1PMV
	UmXqeu7ycmfUDWFvCuaRgy7yiZEiVf/fenGc4II1JJ7ZkV2oHONfCdEEwT9fr2H/w4WxD3Emgsmvy
	o48sbXQhfKP7I5MOp/DedHxxQJ/a7W2dPwHqMpUEKaql2i8w377jjTzDt/tGIpUDOhgBQGiMtetrK
	mGpY51NqPgBfC4i0eLueHuycExk7gc1U1RYupy9+G/LmrM6I0QBh+4AhHJolu0N95v9MpBqd0UBBq
	1DoB7eeR/Gw0d+D6Ul/gQoh3zi6keFCF6MhruJaURGna9QlwJe0wofdOol4DqjJ7Vtx47JMrUmlXN
	iieb/160HKn32SGFKV+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjV7v-0002BX-R8; Fri, 05 Jul 2019 20:48:15 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjV7t-0002B0-7E
 for linux-um@lists.infradead.org; Fri, 05 Jul 2019 20:48:14 +0000
Received: by mail-pg1-f193.google.com with SMTP id w10so4758367pgj.7
 for <linux-um@lists.infradead.org>; Fri, 05 Jul 2019 13:48:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AcnoVRibB2N6fZ+Yp6hO160ET8GdPKrkYOq4kfDG3/o=;
 b=or7g6z6FEIf0kk2uL/ZoTi0Yifd3CVMqYkAJV/MLWV4HcCIkabmppbGT4XDOgHjAUp
 GCnIonWacRV7PHgVKotwGlSI6CgH1O0RJtWdXJiXgr3T9WfpAH4foQsbVPkwE0EfVGaX
 r+n3EtXjjqXOe+IvMCb+JaU45h8/CWoQaEi/afVQFcgHJSLaUzIfNjyMV5mHANb28tXl
 OYekDAjmHK5JeDFzIIfnpBjZoLl9ln5MpVuLKSx/J7Rranh1mxAd8htBNuDEvl16+W0C
 HbGFnUMWgZ8+QI8IENvsxf4u6Y0AUGCacIj7gdi15Cb8NvAiFTB8ALd+9LPKVeuuemQf
 vwLg==
X-Gm-Message-State: APjAAAU6cm9CLwFkNPzrzbLAYFCx+m447z/pIxtLdCQakWnsqwFiFhiu
 nbalBuUf2V+0mnk98oXkw9A=
X-Google-Smtp-Source: APXvYqzYFkN68Owkq9koxWESGSYcLlSN0sO/MqwSKxCi7MUUXmOztl1dSndkrgfsbD0HEg9i6sStdg==
X-Received: by 2002:a63:6986:: with SMTP id e128mr7831367pgc.220.1562359692276; 
 Fri, 05 Jul 2019 13:48:12 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id p7sm13219309pfp.131.2019.07.05.13.48.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:48:11 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 568B940190; Fri,  5 Jul 2019 20:48:10 +0000 (UTC)
Date: Fri, 5 Jul 2019 20:48:10 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v6 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
Message-ID: <20190705204810.GE19023@42.do-not-panic.com>
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-19-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704003615.204860-19-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_134813_262354_ECB31085 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:36:15PM -0700, Brendan Higgins wrote:
> Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> Acked-by: Luis Chamberlain <mcgrof@kernel.org>

Come to think of it, I'd welcome Iurii to be added as a maintainer,
with the hope Iurii would be up to review only the kunit changes. Of
course if Iurii would be up to also help review future proc changes,
even better. 3 pair of eyeballs is better than 2 pairs.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
